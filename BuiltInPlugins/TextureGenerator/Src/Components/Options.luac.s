PROTO_0:
        0 LOADB                            R1 0
        1 LOADN                            R2 -360
        2 JUMPIFNOTLE                      R2 R0 ; [+6]
        4 LOADN                            R2 360
        5 JUMPIFLE                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEKS                       R2 R2 K0 ["Children"]
        3 GETTABLEN                        R3 R2 1
        4 GETTABLEKS                       R4 R1 K1 ["randomizeSeed"]
        6 SETTABLEKS                       R4 R3 K2 ["Value"]
        8 GETTABLEN                        R3 R2 2
        9 GETTABLEKS                       R4 R1 K1 ["randomizeSeed"]
       11 SETTABLEKS                       R4 R3 K3 ["Disabled"]
       13 GETTABLEN                        R3 R2 2
       14 GETTABLEKS                       R4 R1 K4 ["seed"]
       16 SETTABLEKS                       R4 R3 K2 ["Value"]
       18 GETUPVAL                         R3 0
       19 CALL                             R3 0 1
       20 JUMPIF                           R3 ; [+28]
       21 GETTABLEKS                       R3 R1 K5 ["rotation"]
       23 NAMECALL                         R3 R3 K6 ["ToEulerAnglesYXZ"]
       25 CALL                             R3 1 3
       26 GETUPVAL                         R7 1
       27 GETTABLE                         R6 R2 R7
       28 FASTCALL1                        MATH_DEG R3 ; [+3]
       29 MOVE                             R9 R3
       30 GETIMPORT                        R8 K9 [math.deg]
       32 CALL                             R8 1 1
       33 FASTCALL1                        MATH_DEG R4 ; [+3]
       34 MOVE                             R10 R4
       35 GETIMPORT                        R9 K9 [math.deg]
       37 CALL                             R9 1 1
       38 FASTCALL1                        MATH_DEG R5 ; [+3]
       39 MOVE                             R11 R5
       40 GETIMPORT                        R10 K9 [math.deg]
       42 CALL                             R10 1 1
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R7 K12 [Vector3.new]
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K2 ["Value"]
       49 GETUPVAL                         R4 2
       50 GETTABLE                         R3 R2 R4
       51 GETTABLEKS                       R4 R1 K13 ["smartUVUnwrap"]
       53 SETTABLEKS                       R4 R3 K2 ["Value"]
       55 GETUPVAL                         R4 3
       56 GETTABLE                         R3 R2 R4
       57 GETTABLEKS                       R4 R1 K14 ["promptMasking"]
       59 SETTABLEKS                       R4 R3 K2 ["Value"]
       61 RETURN                           R0 0

PROTO_2:
        0 GETTABLEN                        R3 R1 1
        1 GETTABLEKS                       R3 R3 K0 ["Children"]
        3 GETTABLEKS                       R4 R0 K1 ["setRandomizeSeed"]
        5 GETTABLEN                        R5 R3 1
        6 GETTABLEKS                       R5 R5 K2 ["Value"]
        8 CALL                             R4 1 0
        9 GETTABLEKS                       R4 R0 K3 ["setSeed"]
       11 GETTABLEN                        R5 R3 2
       12 GETTABLEKS                       R5 R5 K2 ["Value"]
       14 CALL                             R4 1 0
       15 GETTABLEN                        R4 R3 1
       16 GETTABLEKS                       R4 R4 K2 ["Value"]
       18 JUMPIFNOT                        R4 ; [+5]
       19 GETTABLEKS                       R4 R0 K4 ["setValidSeed"]
       21 LOADB                            R5 1
       22 CALL                             R4 1 0
       23 JUMP                             ; [+5]
       24 GETTABLEN                        R4 R3 2
       25 GETTABLEKS                       R4 R4 K5 ["Validate"]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 0
       29 GETUPVAL                         R4 0
       30 CALL                             R4 0 1
       31 JUMPIF                           R4 ; [+41]
       32 GETUPVAL                         R5 1
       33 GETTABLE                         R4 R3 R5
       34 GETTABLEKS                       R4 R4 K2 ["Value"]
       36 GETTABLEKS                       R8 R4 K8 ["X"]
       38 ADDK                             R7 R8 K6 [180]
       39 MODK                             R6 R7 K7 [360]
       40 SUBK                             R5 R6 K6 [180]
       41 GETTABLEKS                       R9 R4 K9 ["Y"]
       43 ADDK                             R8 R9 K6 [180]
       44 MODK                             R7 R8 K7 [360]
       45 SUBK                             R6 R7 K6 [180]
       46 GETTABLEKS                       R10 R4 K10 ["Z"]
       48 ADDK                             R9 R10 K6 [180]
       49 MODK                             R8 R9 K7 [360]
       50 SUBK                             R7 R8 K6 [180]
       51 GETIMPORT                        R8 K13 [CFrame.fromEulerAnglesYXZ]
       53 FASTCALL1                        MATH_RAD R5 ; [+3]
       54 MOVE                             R10 R5
       55 GETIMPORT                        R9 K16 [math.rad]
       57 CALL                             R9 1 1
       58 FASTCALL1                        MATH_RAD R6 ; [+3]
       59 MOVE                             R11 R6
       60 GETIMPORT                        R10 K16 [math.rad]
       62 CALL                             R10 1 1
       63 FASTCALL1                        MATH_RAD R7 ; [+3]
       64 MOVE                             R12 R7
       65 GETIMPORT                        R11 K16 [math.rad]
       67 CALL                             R11 1 1
       68 CALL                             R8 3 1
       69 GETTABLEKS                       R9 R0 K17 ["setRotation"]
       71 MOVE                             R10 R8
       72 CALL                             R9 1 0
       73 GETTABLEKS                       R4 R0 K18 ["setSmartUVUnwrap"]
       75 GETUPVAL                         R6 2
       76 GETTABLE                         R5 R3 R6
       77 GETTABLEKS                       R5 R5 K2 ["Value"]
       79 CALL                             R4 1 0
       80 GETTABLEKS                       R4 R0 K19 ["setPromptMasking"]
       82 GETUPVAL                         R6 3
       83 GETTABLE                         R5 R3 R6
       84 GETTABLEKS                       R5 R5 K2 ["Value"]
       86 CALL                             R4 1 0
       87 RETURN                           R0 0

PROTO_3:
        0 GETTABLEN                        R2 R0 1
        1 FASTCALL1                        TYPE R2 ; [+2]
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+48]
        7 GETTABLEN                        R2 R0 2
        8 FASTCALL1                        TYPE R2 ; [+2]
        9 GETIMPORT                        R1 K1 [type]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+41]
       14 GETTABLEN                        R2 R0 3
       15 FASTCALL1                        TYPE R2 ; [+2]
       16 GETIMPORT                        R1 K1 [type]
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+34]
       21 GETTABLEN                        R2 R0 1
       22 LOADB                            R1 0
       23 LOADN                            R3 -360
       24 JUMPIFNOTLE                      R3 R2 ; [+6]
       26 LOADN                            R3 360
       27 JUMPIFLE                         R2 R3 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 JUMPIFNOT                        R1 ; [+22]
       32 GETTABLEN                        R2 R0 2
       33 LOADB                            R1 0
       34 LOADN                            R3 -360
       35 JUMPIFNOTLE                      R3 R2 ; [+6]
       37 LOADN                            R3 360
       38 JUMPIFLE                         R2 R3 ; [+2]
       40 LOADB                            R1 0 +1
       41 LOADB                            R1 1
       42 JUMPIFNOT                        R1 ; [+11]
       43 GETTABLEN                        R2 R0 3
       44 LOADB                            R1 0
       45 LOADN                            R3 -360
       46 JUMPIFNOTLE                      R3 R2 ; [+6]
       48 LOADN                            R3 360
       49 JUMPIFLE                         R2 R3 ; [+2]
       51 LOADB                            R1 0 +1
       52 LOADB                            R1 1
       53 JUMPIF                           R1 ; [+11]
       54 DUPTABLE                         R1 K6 [{"X", "Y", "Z"}]
       55 GETTABLEN                        R2 R0 1
       56 SETTABLEKS                       R2 R1 K3 ["X"]
       58 GETTABLEN                        R2 R0 2
       59 SETTABLEKS                       R2 R1 K4 ["Y"]
       61 GETTABLEN                        R2 R0 3
       62 SETTABLEKS                       R2 R1 K5 ["Z"]
       64 RETURN                           R1 1
       65 GETTABLEN                        R2 R0 1
       66 GETTABLEN                        R3 R0 2
       67 GETTABLEN                        R4 R0 3
       68 FASTCALL                         VECTOR ; [+2]
       69 GETIMPORT                        R1 K9 [Vector3.new]
       71 CALL                             R1 3 1
       72 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 3
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 SETLIST                          R1 R2 3 [1]
       10 RETURN                           R1 1

PROTO_5:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 CALL                             R5 0 1
        3 JUMPIFNOT                        R5 ; [+75]
        4 NEWTABLE                         R5 0 4
        6 DUPTABLE                         R6 K5 [{[1] = "RandomizeSeed", ["Label"], ["Tooltip"], ["Schema"]}]
        7 LOADK                            R9 K6 ["Options"]
        8 LOADK                            R10 K1 ["RandomizeSeed"]
        9 NAMECALL                         R7 R0 K7 ["getText"]
       11 CALL                             R7 3 1
       12 SETTABLEKS                       R7 R6 K2 ["Label"]
       14 LOADK                            R9 K6 ["Options"]
       15 LOADK                            R10 K8 ["RandomizeSeedTooltip"]
       16 NAMECALL                         R7 R0 K7 ["getText"]
       18 CALL                             R7 3 1
       19 SETTABLEKS                       R7 R6 K3 ["Tooltip"]
       21 DUPTABLE                         R7 K11 [{["Type"] = "Checkbox"}]
       22 SETTABLEKS                       R7 R6 K4 ["Schema"]
       24 DUPTABLE                         R7 K16 [{[1] = "Seed", ["Disabled"] = True, ["Label"], ["Validate"], ["Schema"]}]
       25 LOADK                            R10 K6 ["Options"]
       26 LOADK                            R11 K12 ["Seed"]
       27 NAMECALL                         R8 R0 K7 ["getText"]
       29 CALL                             R8 3 1
       30 SETTABLEKS                       R8 R7 K2 ["Label"]
       32 GETTABLEKS                       R8 R3 K12 ["Seed"]
       34 SETTABLEKS                       R8 R7 K15 ["Validate"]
       36 DUPTABLE                         R8 K18 [{["Type"] = "Number"}]
       37 SETTABLEKS                       R8 R7 K4 ["Schema"]
       39 DUPTABLE                         R8 K20 [{[1] = "SmartUVUnwrap", ["Label"], ["Tooltip"], ["Schema"]}]
       40 LOADK                            R11 K6 ["Options"]
       41 LOADK                            R12 K19 ["SmartUVUnwrap"]
       42 NAMECALL                         R9 R0 K7 ["getText"]
       44 CALL                             R9 3 1
       45 SETTABLEKS                       R9 R8 K2 ["Label"]
       47 LOADK                            R11 K6 ["Options"]
       48 LOADK                            R12 K21 ["SmartUVUnwrapTooltip"]
       49 NAMECALL                         R9 R0 K7 ["getText"]
       51 CALL                             R9 3 1
       52 SETTABLEKS                       R9 R8 K3 ["Tooltip"]
       54 DUPTABLE                         R9 K11 [{["Type"] = "Checkbox"}]
       55 SETTABLEKS                       R9 R8 K4 ["Schema"]
       57 DUPTABLE                         R9 K23 [{[1] = "PromptMasking", ["Label"], ["Tooltip"], ["Schema"]}]
       58 LOADK                            R12 K6 ["Options"]
       59 LOADK                            R13 K22 ["PromptMasking"]
       60 NAMECALL                         R10 R0 K7 ["getText"]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K2 ["Label"]
       65 LOADK                            R12 K6 ["Options"]
       66 LOADK                            R13 K24 ["PromptMaskingTooltip"]
       67 NAMECALL                         R10 R0 K7 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K3 ["Tooltip"]
       72 DUPTABLE                         R10 K11 [{["Type"] = "Checkbox"}]
       73 SETTABLEKS                       R10 R9 K4 ["Schema"]
       75 SETLIST                          R5 R6 4 [1]
       77 MOVE                             R4 R5
       78 JUMP                             ; [+104]
       79 NEWTABLE                         R5 0 5
       81 DUPTABLE                         R6 K5 [{[1] = "RandomizeSeed", ["Label"], ["Tooltip"], ["Schema"]}]
       82 LOADK                            R9 K6 ["Options"]
       83 LOADK                            R10 K1 ["RandomizeSeed"]
       84 NAMECALL                         R7 R0 K7 ["getText"]
       86 CALL                             R7 3 1
       87 SETTABLEKS                       R7 R6 K2 ["Label"]
       89 LOADK                            R9 K6 ["Options"]
       90 LOADK                            R10 K8 ["RandomizeSeedTooltip"]
       91 NAMECALL                         R7 R0 K7 ["getText"]
       93 CALL                             R7 3 1
       94 SETTABLEKS                       R7 R6 K3 ["Tooltip"]
       96 DUPTABLE                         R7 K11 [{["Type"] = "Checkbox"}]
       97 SETTABLEKS                       R7 R6 K4 ["Schema"]
       99 DUPTABLE                         R7 K16 [{[1] = "Seed", ["Disabled"] = True, ["Label"], ["Validate"], ["Schema"]}]
      100 LOADK                            R10 K6 ["Options"]
      101 LOADK                            R11 K12 ["Seed"]
      102 NAMECALL                         R8 R0 K7 ["getText"]
      104 CALL                             R8 3 1
      105 SETTABLEKS                       R8 R7 K2 ["Label"]
      107 GETTABLEKS                       R8 R3 K12 ["Seed"]
      109 SETTABLEKS                       R8 R7 K15 ["Validate"]
      111 DUPTABLE                         R8 K18 [{["Type"] = "Number"}]
      112 SETTABLEKS                       R8 R7 K4 ["Schema"]
      114 DUPTABLE                         R8 K26 [{[1] = "Rotation", ["Label"], ["Validate"], ["Schema"]}]
      115 LOADK                            R11 K6 ["Options"]
      116 LOADK                            R12 K25 ["Rotation"]
      117 NAMECALL                         R9 R0 K7 ["getText"]
      119 CALL                             R9 3 1
      120 SETTABLEKS                       R9 R8 K2 ["Label"]
      122 GETTABLEKS                       R9 R3 K25 ["Rotation"]
      124 SETTABLEKS                       R9 R8 K15 ["Validate"]
      126 DUPTABLE                         R9 K31 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
      127 NEWTABLE                         R10 0 3
      129 LOADK                            R11 K32 ["X"]
      130 LOADK                            R12 K33 ["Y"]
      131 LOADK                            R13 K34 ["Z"]
      132 SETLIST                          R10 R11 3 [1]
      134 SETTABLEKS                       R10 R9 K28 ["Components"]
      136 DUPCLOSURE                       R10 K35 [PROTO_3]
      137 SETTABLEKS                       R10 R9 K29 ["GetValue"]
      139 DUPCLOSURE                       R10 K36 [PROTO_4]
      140 SETTABLEKS                       R10 R9 K30 ["GetComponents"]
      142 SETTABLEKS                       R9 R8 K4 ["Schema"]
      144 DUPTABLE                         R9 K20 [{[1] = "SmartUVUnwrap", ["Label"], ["Tooltip"], ["Schema"]}]
      145 LOADK                            R12 K6 ["Options"]
      146 LOADK                            R13 K19 ["SmartUVUnwrap"]
      147 NAMECALL                         R10 R0 K7 ["getText"]
      149 CALL                             R10 3 1
      150 SETTABLEKS                       R10 R9 K2 ["Label"]
      152 LOADK                            R12 K6 ["Options"]
      153 LOADK                            R13 K21 ["SmartUVUnwrapTooltip"]
      154 NAMECALL                         R10 R0 K7 ["getText"]
      156 CALL                             R10 3 1
      157 SETTABLEKS                       R10 R9 K3 ["Tooltip"]
      159 DUPTABLE                         R10 K11 [{["Type"] = "Checkbox"}]
      160 SETTABLEKS                       R10 R9 K4 ["Schema"]
      162 DUPTABLE                         R10 K23 [{[1] = "PromptMasking", ["Label"], ["Tooltip"], ["Schema"]}]
      163 LOADK                            R13 K6 ["Options"]
      164 LOADK                            R14 K22 ["PromptMasking"]
      165 NAMECALL                         R11 R0 K7 ["getText"]
      167 CALL                             R11 3 1
      168 SETTABLEKS                       R11 R10 K2 ["Label"]
      170 LOADK                            R13 K6 ["Options"]
      171 LOADK                            R14 K24 ["PromptMaskingTooltip"]
      172 NAMECALL                         R11 R0 K7 ["getText"]
      174 CALL                             R11 3 1
      175 SETTABLEKS                       R11 R10 K3 ["Tooltip"]
      177 DUPTABLE                         R11 K11 [{["Type"] = "Checkbox"}]
      178 SETTABLEKS                       R11 R10 K4 ["Schema"]
      180 SETLIST                          R5 R6 5 [1]
      182 MOVE                             R4 R5
      183 NEWTABLE                         R5 0 1
      185 DUPTABLE                         R6 K39 [{[1] = "Advanced Options", ["Label"], ["Children"]}]
      186 LOADK                            R9 K6 ["Options"]
      187 LOADK                            R10 K40 ["AdvancedOptions"]
      188 NAMECALL                         R7 R0 K7 ["getText"]
      190 CALL                             R7 3 1
      191 SETTABLEKS                       R7 R6 K2 ["Label"]
      193 SETTABLEKS                       R4 R6 K38 ["Children"]
      195 SETLIST                          R5 R6 1 [1]
      197 RETURN                           R5 1

PROTO_6:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["number"] ; [+18]
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["setValidSeed"]
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 GETIMPORT                        R1 K7 [Enum.PropertyStatus.Error]
       17 GETUPVAL                         R2 2
       18 LOADK                            R4 K8 ["Options"]
       19 LOADK                            R5 K9 ["SeedNotANumber"]
       20 NAMECALL                         R2 R2 K10 ["getText"]
       22 CALL                             R2 3 -1
       23 RETURN                           R1 -1
       24 LOADN                            R1 0
       25 JUMPIFLT                         R0 R1 ; [+6]
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K11 ["MAX_SEED_VALUE"]
       30 JUMPIFNOTLT                      R1 R0 ; [+18]
       32 GETUPVAL                         R1 0
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K3 ["setValidSeed"]
       38 LOADB                            R2 0
       39 CALL                             R1 1 0
       40 GETIMPORT                        R1 K7 [Enum.PropertyStatus.Error]
       42 GETUPVAL                         R2 2
       43 LOADK                            R4 K8 ["Options"]
       44 LOADK                            R5 K12 ["SeedOutOfRange"]
       45 NAMECALL                         R2 R2 K10 ["getText"]
       47 CALL                             R2 3 -1
       48 RETURN                           R1 -1
       49 GETUPVAL                         R1 0
       50 MOVE                             R2 R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K3 ["setValidSeed"]
       55 LOADB                            R2 1
       56 CALL                             R1 1 0
       57 GETIMPORT                        R1 K14 [Enum.PropertyStatus.Ok]
       59 LOADK                            R2 K15 [""]
       60 RETURN                           R1 2

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 FASTCALL1                        TYPE R2 ; [+2]
        3 GETIMPORT                        R1 K2 [type]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+17]
        8 GETTABLEKS                       R2 R0 K4 ["Y"]
       10 FASTCALL1                        TYPE R2 ; [+2]
       11 GETIMPORT                        R1 K2 [type]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+9]
       16 GETTABLEKS                       R2 R0 K5 ["Z"]
       18 FASTCALL1                        TYPE R2 ; [+2]
       19 GETIMPORT                        R1 K2 [type]
       21 CALL                             R1 1 1
       22 JUMPIFEQKS                       R1 K3 ["number"] ; [+15]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K6 ["setValidRotation"]
       27 LOADB                            R2 0
       28 CALL                             R1 1 0
       29 GETIMPORT                        R1 K10 [Enum.PropertyStatus.Error]
       31 GETUPVAL                         R2 1
       32 LOADK                            R4 K11 ["Options"]
       33 LOADK                            R5 K12 ["RotationAnglesNotNumbers"]
       34 NAMECALL                         R2 R2 K13 ["getText"]
       36 CALL                             R2 3 -1
       37 RETURN                           R1 -1
       38 GETTABLEKS                       R2 R0 K0 ["X"]
       40 LOADB                            R1 0
       41 LOADN                            R3 -360
       42 JUMPIFNOTLE                      R3 R2 ; [+6]
       44 LOADN                            R3 360
       45 JUMPIFLE                         R2 R3 ; [+2]
       47 LOADB                            R1 0 +1
       48 LOADB                            R1 1
       49 JUMPIFNOT                        R1 ; [+24]
       50 GETTABLEKS                       R2 R0 K4 ["Y"]
       52 LOADB                            R1 0
       53 LOADN                            R3 -360
       54 JUMPIFNOTLE                      R3 R2 ; [+6]
       56 LOADN                            R3 360
       57 JUMPIFLE                         R2 R3 ; [+2]
       59 LOADB                            R1 0 +1
       60 LOADB                            R1 1
       61 JUMPIFNOT                        R1 ; [+12]
       62 GETTABLEKS                       R2 R0 K5 ["Z"]
       64 LOADB                            R1 0
       65 LOADN                            R3 -360
       66 JUMPIFNOTLE                      R3 R2 ; [+6]
       68 LOADN                            R3 360
       69 JUMPIFLE                         R2 R3 ; [+2]
       71 LOADB                            R1 0 +1
       72 LOADB                            R1 1
       73 JUMPIF                           R1 ; [+14]
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R1 R1 K6 ["setValidRotation"]
       77 LOADB                            R2 0
       78 CALL                             R1 1 0
       79 GETIMPORT                        R1 K10 [Enum.PropertyStatus.Error]
       81 GETUPVAL                         R2 1
       82 LOADK                            R4 K11 ["Options"]
       83 LOADK                            R5 K14 ["RotationAnglesOutOfRange"]
       84 NAMECALL                         R2 R2 K13 ["getText"]
       86 CALL                             R2 3 -1
       87 RETURN                           R1 -1
       88 GETUPVAL                         R1 0
       89 GETTABLEKS                       R1 R1 K6 ["setValidRotation"]
       91 LOADB                            R2 1
       92 CALL                             R1 1 0
       93 GETIMPORT                        R1 K16 [Enum.PropertyStatus.Ok]
       95 LOADK                            R2 K17 [""]
       96 RETURN                           R1 2

PROTO_8:
        0 DUPTABLE                         R0 K2 [{"Seed", "Rotation"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Seed"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["Rotation"]
        7 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 1
        6 GETUPVAL                         R1 5
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 0
       10 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setValidRotation"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["setValidSeed"]
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["useState"]
       18 LOADN                            R6 0
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U3
       28 NEWTABLE                         R9 0 1
       30 GETTABLEKS                       R10 R1 K4 ["setValidSeed"]
       32 SETLIST                          R9 R10 1 [1]
       34 CALL                             R7 2 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       38 NEWCLOSURE                       R9 P1
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R10 0 1
       43 GETTABLEKS                       R11 R1 K5 ["setValidRotation"]
       45 SETLIST                          R10 R11 1 [1]
       47 CALL                             R8 2 1
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       51 NEWCLOSURE                       R10 P2
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R8
       54 NEWTABLE                         R11 0 2
       56 MOVE                             R12 R7
       57 MOVE                             R13 R8
       58 SETLIST                          R11 R12 2 [1]
       60 CALL                             R9 2 1
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       64 NEWCLOSURE                       R11 P3
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          UPVAL U5
       71 NEWTABLE                         R12 0 1
       73 MOVE                             R13 R1
       74 SETLIST                          R12 R13 1 [1]
       76 CALL                             R10 2 1
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R11 R11 K3 ["useCallback"]
       80 NEWCLOSURE                       R12 P4
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R5
       84 NEWTABLE                         R13 0 2
       86 MOVE                             R14 R1
       87 MOVE                             R15 R5
       88 SETLIST                          R13 R14 2 [1]
       90 CALL                             R11 2 1
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       94 NEWCLOSURE                       R13 P5
       95 CAPTURE                          VAL R1
       96 NEWTABLE                         R14 0 1
       98 GETIMPORT                        R15 K9 [expansion]
      100 SETLIST                          R14 R15 1 [1]
      102 CALL                             R12 2 0
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K10 ["createElement"]
      106 GETUPVAL                         R13 7
      107 DUPTABLE                         R14 K24 [{["AutomaticSize"], ["Expansion"], ["ExpandByDefault"] = False, ["Items"], ["LabelHeight"] = 24, ["LabelWidth"], ["LayoutOrder"], ["OnChange"], ["OnExpansionChange"], ["Size"], ["UseScrollingFrame"] = False}]
      108 GETIMPORT                        R15 K27 [Enum.AutomaticSize.Y]
      110 SETTABLEKS                       R15 R14 K11 ["AutomaticSize"]
      112 GETUPVAL                         R16 8
      113 CALL                             R16 0 1
      114 JUMPIFNOT                        R16 ; [+3]
      115 GETTABLEKS                       R15 R1 K28 ["optionsExpanded"]
      117 JUMP                             ; [+1]
      118 MOVE                             R15 R3
      119 SETTABLEKS                       R15 R14 K12 ["Expansion"]
      121 SETTABLEKS                       R10 R14 K15 ["Items"]
      123 GETIMPORT                        R15 K31 [UDim.new]
      125 LOADN                            R16 0
      126 LOADN                            R17 164
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K18 ["LabelWidth"]
      130 GETTABLEKS                       R15 R0 K19 ["LayoutOrder"]
      132 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      134 SETTABLEKS                       R11 R14 K20 ["OnChange"]
      136 GETUPVAL                         R16 8
      137 CALL                             R16 0 1
      138 JUMPIFNOT                        R16 ; [+3]
      139 GETTABLEKS                       R15 R1 K32 ["setOptionsExpanded"]
      141 JUMP                             ; [+1]
      142 MOVE                             R15 R4
      143 SETTABLEKS                       R15 R14 K21 ["OnExpansionChange"]
      145 GETIMPORT                        R15 K35 [UDim2.fromScale]
      147 LOADN                            R16 1
      148 LOADN                            R17 0
      149 CALL                             R15 2 1
      150 SETTABLEKS                       R15 R14 K22 ["Size"]
      152 CALL                             R12 2 -1
      153 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R1 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Form"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R8 K14 ["Util"]
       35 GETTABLEKS                       R8 R8 K15 ["Constants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Util"]
       44 GETTABLEKS                       R9 R9 K16 ["OptionsContext"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K17 ["Flags"]
       53 GETTABLEKS                       R10 R10 K18 ["getFFlagTextureGeneratorMultiStagePreview"]
       55 CALL                             R9 1 1
       56 MOVE                             R11 R9
       57 CALL                             R11 0 1
       58 JUMPIFNOT                        R11 ; [+2]
       59 LOADNIL                          R10
       60 JUMP                             ; [+1]
       61 LOADN                            R10 3
       62 MOVE                             R12 R9
       63 CALL                             R12 0 1
       64 JUMPIFNOT                        R12 ; [+2]
       65 LOADN                            R11 3
       66 JUMP                             ; [+1]
       67 LOADN                            R11 4
       68 MOVE                             R13 R9
       69 CALL                             R13 0 1
       70 JUMPIFNOT                        R13 ; [+2]
       71 LOADN                            R12 4
       72 JUMP                             ; [+1]
       73 LOADN                            R12 5
       74 DUPCLOSURE                       R13 K19 [PROTO_0]
       75 DUPCLOSURE                       R14 K20 [PROTO_1]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R12
       80 DUPCLOSURE                       R15 K21 [PROTO_2]
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R12
       85 DUPCLOSURE                       R16 K22 [PROTO_5]
       86 CAPTURE                          VAL R9
       87 DUPCLOSURE                       R17 K23 [PROTO_12]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R9
       97 RETURN                           R17 1
