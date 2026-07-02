PROTO_0:
        0 JUMPIFNOT                        R0 ; [+22]
        1 JUMPIFNOT                        R1 ; [+21]
        2 GETIMPORT                        R2 K1 [ipairs]
        4 NAMECALL                         R3 R0 K2 ["GetChildren"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_INEXT                   R2
        9 LOADK                            R9 K3 ["Attachment"]
       10 NAMECALL                         R7 R6 K4 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+7]
       14 GETTABLEKS                       R9 R6 K5 ["Name"]
       16 NAMECALL                         R7 R1 K6 ["FindFirstChild"]
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+1]
       20 RETURN                           R6 2
       21 FORGLOOP                         R2 2 [inext] ; [-13]
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getRigInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["PartNameToMotor"]
        7 GETTABLEKS                       R3 R1 K2 ["PartNameToAnimConstraint"]
        9 NEWTABLE                         R4 0 0
       11 GETIMPORT                        R5 K4 [pairs]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K5 ["PartToConstraintConfigMap"]
       16 CALL                             R5 1 3
       17 FORGPREP_NEXT                    R5
       18 NEWTABLE                         R10 16 0
       20 JUMPIFNOT                        R2 ; [+14]
       21 GETTABLE                         R11 R2 R8
       22 JUMPIFNOT                        R11 ; [+12]
       23 GETUPVAL                         R11 2
       24 GETTABLE                         R12 R2 R8
       25 GETTABLEKS                       R12 R12 K6 ["Part0"]
       27 GETTABLE                         R13 R2 R8
       28 GETTABLEKS                       R13 R13 K7 ["Part1"]
       30 CALL                             R11 2 2
       31 SETTABLEKS                       R11 R10 K8 ["Attachment0"]
       33 SETTABLEKS                       R12 R10 K9 ["Attachment1"]
       35 JUMPIFNOT                        R3 ; [+18]
       36 GETTABLE                         R11 R3 R8
       37 JUMPIFNOT                        R11 ; [+16]
       38 GETUPVAL                         R11 2
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R12 R12 K10 ["getPart0"]
       42 GETTABLE                         R13 R3 R8
       43 CALL                             R12 1 1
       44 GETUPVAL                         R13 0
       45 GETTABLEKS                       R13 R13 K11 ["getPart1"]
       47 GETTABLE                         R14 R3 R8
       48 CALL                             R13 1 -1
       49 CALL                             R11 -1 2
       50 SETTABLEKS                       R11 R10 K8 ["Attachment0"]
       52 SETTABLEKS                       R12 R10 K9 ["Attachment1"]
       54 GETTABLEKS                       R11 R10 K8 ["Attachment0"]
       56 JUMPIFNOT                        R11 ; [+62]
       57 GETTABLEKS                       R12 R10 K8 ["Attachment0"]
       59 FASTCALL1                        ASSERT R12 ; [+2]
       60 GETIMPORT                        R11 K13 [assert]
       62 CALL                             R11 1 0
       63 GETIMPORT                        R11 K16 [string.gsub]
       65 GETTABLEKS                       R12 R10 K8 ["Attachment0"]
       67 GETTABLEKS                       R12 R12 K17 ["Name"]
       69 LOADK                            R13 K18 ["Attachment"]
       70 LOADK                            R14 K19 [""]
       71 CALL                             R11 3 1
       72 GETTABLEKS                       R12 R9 K20 ["LowerAngle"]
       74 JUMPIFEQKNIL                     R12 ; [+5]
       76 GETTABLEKS                       R12 R9 K20 ["LowerAngle"]
       78 SETTABLEKS                       R12 R10 K20 ["LowerAngle"]
       80 GETTABLEKS                       R12 R9 K21 ["TwistLimitsEnabled"]
       82 JUMPIFEQKNIL                     R12 ; [+13]
       84 GETTABLEKS                       R12 R9 K21 ["TwistLimitsEnabled"]
       86 SETTABLEKS                       R12 R10 K21 ["TwistLimitsEnabled"]
       88 GETTABLEKS                       R12 R9 K22 ["TwistUpperAngle"]
       90 SETTABLEKS                       R12 R10 K22 ["TwistUpperAngle"]
       92 GETTABLEKS                       R12 R9 K23 ["TwistLowerAngle"]
       94 SETTABLEKS                       R12 R10 K23 ["TwistLowerAngle"]
       96 GETTABLEKS                       R12 R9 K24 ["Restitution"]
       98 SETTABLEKS                       R12 R10 K24 ["Restitution"]
      100 GETTABLEKS                       R12 R9 K25 ["LimitsEnabled"]
      102 SETTABLEKS                       R12 R10 K25 ["LimitsEnabled"]
      104 GETTABLEKS                       R12 R9 K26 ["UpperAngle"]
      106 SETTABLEKS                       R12 R10 K26 ["UpperAngle"]
      108 LOADB                            R12 0
      109 SETTABLEKS                       R12 R10 K27 ["Enabled"]
      111 DUPTABLE                         R12 K30 [{"Type", "Props"}]
      112 GETTABLEKS                       R13 R9 K28 ["Type"]
      114 SETTABLEKS                       R13 R12 K28 ["Type"]
      116 SETTABLEKS                       R10 R12 K29 ["Props"]
      118 SETTABLE                         R12 R4 R11
      119 FORGLOOP                         R5 2 ; [-102]
      121 RETURN                           R4 1

PROTO_2:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R1 0
        2 LOADB                            R2 0
        3 RETURN                           R1 2
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL1                        ASSERT R2 ; [+2]
        9 GETIMPORT                        R1 K1 [assert]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["getRigInfo"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R2 R1 K3 ["PartNameToMotor"]
       19 GETTABLEKS                       R3 R1 K4 ["PartNameToConstraint"]
       21 GETTABLEKS                       R4 R1 K5 ["PartNameToAnimConstraint"]
       23 GETIMPORT                        R5 K7 [next]
       25 MOVE                             R6 R3
       26 CALL                             R5 1 1
       27 JUMPIFEQKNIL                     R5 ; [+7]
       29 LOADB                            R5 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K8 ["usingTemporaryConstraints"]
       33 CALL                             R6 0 -1
       34 RETURN                           R5 -1
       35 GETIMPORT                        R5 K10 [pairs]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K11 ["R15links"]
       40 CALL                             R5 1 3
       41 FORGPREP_NEXT                    R5
       42 JUMPIFNOT                        R2 ; [+2]
       43 GETTABLE                         R10 R2 R8
       44 JUMP                             ; [+1]
       45 LOADNIL                          R10
       46 JUMPIFNOT                        R4 ; [+2]
       47 GETTABLE                         R11 R4 R8
       48 JUMP                             ; [+1]
       49 LOADNIL                          R11
       50 JUMPIF                           R10 ; [+1]
       51 JUMPIFNOT                        R11 ; [+35]
       52 GETUPVAL                         R12 2
       53 MOVE                             R15 R8
       54 NAMECALL                         R13 R0 K12 ["FindFirstChild"]
       56 CALL                             R13 2 1
       57 MOVE                             R16 R9
       58 NAMECALL                         R14 R0 K12 ["FindFirstChild"]
       60 CALL                             R14 2 -1
       61 CALL                             R12 -1 2
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K13 ["getPart0"]
       65 MOVE                             R15 R11
       66 CALL                             R14 1 1
       67 JUMPIFEQKNIL                     R12 ; [+15]
       69 JUMPIFEQKNIL                     R13 ; [+13]
       71 JUMPIFNOT                        R10 ; [+6]
       72 GETTABLEKS                       R15 R10 K14 ["Part0"]
       74 GETTABLEKS                       R15 R15 K15 ["Name"]
       76 JUMPIFNOTEQ                      R15 R9 ; [+6]
       78 JUMPIFNOT                        R14 ; [+11]
       79 GETTABLEKS                       R15 R14 K15 ["Name"]
       81 JUMPIFEQ                         R15 R9 ; [+8]
       83 LOADB                            R15 0
       84 LOADB                            R16 0
       85 RETURN                           R15 2
       86 JUMP                             ; [+3]
       87 LOADB                            R12 0
       88 LOADB                            R13 0
       89 RETURN                           R12 2
       90 FORGLOOP                         R5 2 ; [-49]
       92 LOADB                            R5 1
       93 LOADB                            R6 1
       94 RETURN                           R5 2

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLEKS                       R8 R7 K2 ["Part0"]
        9 GETTABLEKS                       R9 R7 K2 ["Part0"]
       11 GETTABLEKS                       R9 R9 K3 ["CFrame"]
       13 SETTABLE                         R9 R2 R8
       14 GETTABLEKS                       R8 R7 K4 ["Part1"]
       16 GETTABLEKS                       R9 R7 K4 ["Part1"]
       18 GETTABLEKS                       R9 R9 K3 ["CFrame"]
       20 SETTABLE                         R9 R2 R8
       21 FORGLOOP                         R3 2 ; [-15]
       23 MOVE                             R3 R1
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K5 ["getPart0"]
       30 GETTABLEKS                       R9 R7 K6 ["OriginalData"]
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K7 ["getPart1"]
       36 GETTABLEKS                       R10 R7 K6 ["OriginalData"]
       38 CALL                             R9 1 1
       39 JUMPIFNOT                        R8 ; [+7]
       40 JUMPIFNOT                        R9 ; [+6]
       41 GETTABLEKS                       R10 R8 K3 ["CFrame"]
       43 SETTABLE                         R10 R2 R8
       44 GETTABLEKS                       R10 R9 K3 ["CFrame"]
       46 SETTABLE                         R10 R2 R9
       47 FORGLOOP                         R3 2 ; [-21]
       49 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Motor6D"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K4 ["Name"]
        6 SETTABLEKS                       R2 R1 K4 ["Name"]
        8 GETTABLEKS                       R2 R0 K5 ["Part0"]
       10 SETTABLEKS                       R2 R1 K5 ["Part0"]
       12 GETTABLEKS                       R2 R0 K6 ["Part1"]
       14 SETTABLEKS                       R2 R1 K6 ["Part1"]
       16 GETTABLEKS                       R2 R0 K7 ["C0"]
       18 SETTABLEKS                       R2 R1 K7 ["C0"]
       20 GETTABLEKS                       R2 R0 K8 ["C1"]
       22 SETTABLEKS                       R2 R1 K8 ["C1"]
       24 GETTABLEKS                       R2 R0 K9 ["Parent"]
       26 SETTABLEKS                       R2 R1 K9 ["Parent"]
       28 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["OriginalData"]
        2 GETTABLEKS                       R2 R0 K1 ["Parent"]
        4 SETTABLEKS                       R2 R1 K1 ["Parent"]
        6 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R7 R2 K0 ["Inverse"]
        2 CALL                             R7 1 1
        3 NAMECALL                         R8 R0 K0 ["Inverse"]
        5 CALL                             R8 1 1
        6 MUL                              R6 R7 R8
        7 MUL                              R5 R6 R1
        8 MUL                              R4 R5 R3
        9 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["Part0"]
        2 GETTABLE                         R3 R1 R4
        3 GETTABLEKS                       R5 R0 K1 ["Part1"]
        5 GETTABLE                         R4 R1 R5
        6 GETTABLEKS                       R5 R0 K2 ["C0"]
        8 GETTABLEKS                       R6 R0 K3 ["C1"]
       10 NAMECALL                         R9 R5 K4 ["Inverse"]
       12 CALL                             R9 1 1
       13 NAMECALL                         R10 R3 K4 ["Inverse"]
       15 CALL                             R10 1 1
       16 MUL                              R8 R9 R10
       17 MUL                              R7 R8 R4
       18 MUL                              R2 R7 R6
       19 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["OriginalData"]
        2 GETTABLEKS                       R4 R4 K1 ["Attachment0"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL1                        ASSERT R3 ; [+2]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R4 R0 K0 ["OriginalData"]
       14 GETTABLEKS                       R4 R4 K4 ["Attachment1"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL1                        ASSERT R3 ; [+2]
       21 GETIMPORT                        R2 K3 [assert]
       23 CALL                             R2 1 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K5 ["getPart0"]
       27 GETTABLEKS                       R5 R0 K0 ["OriginalData"]
       29 CALL                             R4 1 1
       30 GETTABLE                         R3 R1 R4
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K6 ["getPart1"]
       34 GETTABLEKS                       R6 R0 K0 ["OriginalData"]
       36 CALL                             R5 1 1
       37 GETTABLE                         R4 R1 R5
       38 GETTABLEKS                       R5 R0 K0 ["OriginalData"]
       40 GETTABLEKS                       R5 R5 K1 ["Attachment0"]
       42 GETTABLEKS                       R5 R5 K7 ["CFrame"]
       44 GETTABLEKS                       R6 R0 K0 ["OriginalData"]
       46 GETTABLEKS                       R6 R6 K4 ["Attachment1"]
       48 GETTABLEKS                       R6 R6 K7 ["CFrame"]
       50 NAMECALL                         R9 R5 K8 ["Inverse"]
       52 CALL                             R9 1 1
       53 NAMECALL                         R10 R3 K8 ["Inverse"]
       55 CALL                             R10 1 1
       56 MUL                              R8 R9 R10
       57 MUL                              R7 R8 R4
       58 MUL                              R2 R7 R6
       59 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["Name"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFEQKNIL                     R2 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R0 K0 ["Name"]
        9 GETTABLE                         R2 R3 R4
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R0 K2 ["Anchored"]
       16 GETIMPORT                        R2 K4 [ipairs]
       18 GETTABLEKS                       R3 R1 K5 ["Attachments"]
       20 JUMPIF                           R3 ; [+2]
       21 NEWTABLE                         R3 0 0
       23 CALL                             R2 1 3
       24 FORGPREP_INEXT                   R2
       25 GETTABLEKS                       R9 R6 K0 ["Name"]
       27 NAMECALL                         R7 R0 K6 ["FindFirstChild"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+13]
       31 LOADK                            R10 K7 ["Attachment"]
       32 NAMECALL                         R8 R7 K8 ["IsA"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+8]
       36 GETTABLEKS                       R8 R6 K9 ["Axis"]
       38 SETTABLEKS                       R8 R7 K9 ["Axis"]
       40 GETTABLEKS                       R8 R6 K10 ["SecondaryAxis"]
       42 SETTABLEKS                       R8 R7 K10 ["SecondaryAxis"]
       44 FORGLOOP                         R2 2 [inext] ; [-20]
       46 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getRigInfo"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 GETTABLEKS                       R6 R5 K1 ["PartNameToConstraint"]
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          VAL R6
        9 GETIMPORT                        R8 K3 [pairs]
       11 MOVE                             R9 R2
       12 CALL                             R8 1 3
       13 FORGPREP_NEXT                    R8
       14 MOVE                             R13 R7
       15 MOVE                             R14 R11
       16 MOVE                             R15 R12
       17 CALL                             R13 2 0
       18 GETIMPORT                        R13 K6 [Instance.new]
       20 LOADK                            R14 K7 ["Motor6D"]
       21 CALL                             R13 1 1
       22 GETTABLEKS                       R14 R12 K8 ["Name"]
       24 SETTABLEKS                       R14 R13 K8 ["Name"]
       26 GETTABLEKS                       R14 R12 K9 ["Part0"]
       28 SETTABLEKS                       R14 R13 K9 ["Part0"]
       30 GETTABLEKS                       R14 R12 K10 ["Part1"]
       32 SETTABLEKS                       R14 R13 K10 ["Part1"]
       34 GETTABLEKS                       R14 R12 K11 ["C0"]
       36 SETTABLEKS                       R14 R13 K11 ["C0"]
       38 GETTABLEKS                       R14 R12 K12 ["C1"]
       40 SETTABLEKS                       R14 R13 K12 ["C1"]
       42 GETTABLEKS                       R14 R12 K13 ["Parent"]
       44 SETTABLEKS                       R14 R13 K13 ["Parent"]
       46 GETTABLEKS                       R13 R11 K8 ["Name"]
       48 GETTABLEKS                       R16 R12 K9 ["Part0"]
       50 GETTABLE                         R15 R1 R16
       51 GETTABLEKS                       R17 R12 K10 ["Part1"]
       53 GETTABLE                         R16 R1 R17
       54 GETTABLEKS                       R17 R12 K11 ["C0"]
       56 GETTABLEKS                       R18 R12 K12 ["C1"]
       58 NAMECALL                         R21 R17 K14 ["Inverse"]
       60 CALL                             R21 1 1
       61 NAMECALL                         R22 R15 K14 ["Inverse"]
       63 CALL                             R22 1 1
       64 MUL                              R20 R21 R22
       65 MUL                              R19 R20 R16
       66 MUL                              R14 R19 R18
       67 SETTABLE                         R14 R4 R13
       68 FORGLOOP                         R8 2 ; [-55]
       70 GETIMPORT                        R8 K3 [pairs]
       72 MOVE                             R9 R3
       73 CALL                             R8 1 3
       74 FORGPREP_NEXT                    R8
       75 MOVE                             R13 R7
       76 MOVE                             R14 R11
       77 MOVE                             R15 R12
       78 CALL                             R13 2 0
       79 GETTABLEKS                       R13 R12 K15 ["OriginalData"]
       81 GETTABLEKS                       R14 R12 K13 ["Parent"]
       83 SETTABLEKS                       R14 R13 K13 ["Parent"]
       85 GETTABLEKS                       R13 R11 K8 ["Name"]
       87 GETUPVAL                         R14 1
       88 MOVE                             R15 R12
       89 MOVE                             R16 R1
       90 CALL                             R14 2 1
       91 SETTABLE                         R14 R4 R13
       92 FORGLOOP                         R8 2 ; [-18]
       94 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 1
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R0
        8 MOVE                             R7 R4
        9 MOVE                             R8 R1
       10 MOVE                             R9 R2
       11 MOVE                             R10 R3
       12 CALL                             R5 5 0
       13 GETUPVAL                         R6 2
       14 CALL                             R6 0 1
       15 JUMPIFNOT                        R6 ; [+6]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K0 ["getRootPart"]
       19 MOVE                             R6 R0
       20 CALL                             R5 1 1
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K1 ["findRootPart"]
       25 MOVE                             R6 R0
       26 CALL                             R5 1 1
       27 LOADB                            R6 1
       28 SETTABLEKS                       R6 R5 K2 ["Anchored"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K3 ["clearCache"]
       33 CALL                             R6 0 0
       34 RETURN                           R3 1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+38]
        1 JUMPIFNOT                        R1 ; [+37]
        2 DUPTABLE                         R3 K7 [{"Name", "Parent", "Part0", "Part1", "C0", "C1", "Attachments"}]
        3 GETTABLEKS                       R4 R1 K0 ["Name"]
        5 SETTABLEKS                       R4 R3 K0 ["Name"]
        7 GETTABLEKS                       R4 R1 K1 ["Parent"]
        9 SETTABLEKS                       R4 R3 K1 ["Parent"]
       11 GETTABLEKS                       R4 R1 K2 ["Part0"]
       13 SETTABLEKS                       R4 R3 K2 ["Part0"]
       15 GETTABLEKS                       R4 R1 K3 ["Part1"]
       17 SETTABLEKS                       R4 R3 K3 ["Part1"]
       19 GETTABLEKS                       R4 R1 K4 ["C0"]
       21 SETTABLEKS                       R4 R3 K4 ["C0"]
       23 GETTABLEKS                       R4 R1 K5 ["C1"]
       25 SETTABLEKS                       R4 R3 K5 ["C1"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K6 ["Attachments"]
       31 SETTABLE                         R3 R2 R0
       32 GETTABLEKS                       R3 R0 K8 ["CFrame"]
       34 NAMECALL                         R4 R1 K9 ["Destroy"]
       36 CALL                             R4 1 0
       37 SETTABLEKS                       R3 R0 K8 ["CFrame"]
       39 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+20]
        1 JUMPIFNOT                        R1 ; [+19]
        2 DUPTABLE                         R3 K3 [{"OriginalData", "Parent", "Attachments"}]
        3 SETTABLEKS                       R1 R3 K0 ["OriginalData"]
        5 GETTABLEKS                       R4 R1 K1 ["Parent"]
        7 SETTABLEKS                       R4 R3 K1 ["Parent"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K2 ["Attachments"]
       13 SETTABLE                         R3 R2 R0
       14 GETTABLEKS                       R3 R0 K4 ["CFrame"]
       16 LOADNIL                          R4
       17 SETTABLEKS                       R4 R1 K1 ["Parent"]
       19 SETTABLEKS                       R3 R0 K4 ["CFrame"]
       21 RETURN                           R0 0

PROTO_14:
        0 JUMPIF                           R2 ; [+2]
        1 LOADNIL                          R3
        2 RETURN                           R3 1
        3 FASTCALL1                        ASSERT R2 ; [+3]
        4 MOVE                             R4 R2
        5 GETIMPORT                        R3 K1 [assert]
        7 CALL                             R3 1 0
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETTABLEKS                       R4 R2 K2 ["Name"]
       11 GETTABLE                         R3 R0 R4
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETTABLEKS                       R4 R3 K3 ["Part0"]
       15 RETURN                           R4 1
       16 JUMPIFNOT                        R1 ; [+10]
       17 GETTABLEKS                       R4 R2 K2 ["Name"]
       19 GETTABLE                         R3 R1 R4
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["getPart0"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1
       27 LOADNIL                          R3
       28 RETURN                           R3 1

PROTO_15:
        0 MOVE                             R3 R2
        1 LOADN                            R4 -1
        2 JUMPIFEQKNIL                     R3 ; [+33]
        4 MOVE                             R5 R3
        5 JUMPIF                           R5 ; [+2]
        6 LOADNIL                          R3
        7 JUMP                             ; [+26]
        8 FASTCALL1                        ASSERT R5 ; [+3]
        9 MOVE                             R7 R5
       10 GETIMPORT                        R6 K1 [assert]
       12 CALL                             R6 1 0
       13 JUMPIFNOT                        R0 ; [+7]
       14 GETTABLEKS                       R7 R5 K2 ["Name"]
       16 GETTABLE                         R6 R0 R7
       17 JUMPIFNOT                        R6 ; [+3]
       18 GETTABLEKS                       R3 R6 K3 ["Part0"]
       20 JUMP                             ; [+13]
       21 JUMPIFNOT                        R1 ; [+11]
       22 GETTABLEKS                       R7 R5 K2 ["Name"]
       24 GETTABLE                         R6 R1 R7
       25 JUMPIFNOT                        R6 ; [+7]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K4 ["getPart0"]
       29 MOVE                             R8 R6
       30 CALL                             R7 1 1
       31 MOVE                             R3 R7
       32 JUMP                             ; [+1]
       33 LOADNIL                          R3
       34 ADDK                             R4 R4 K5 [1]
       35 JUMPBACK                         ; [-34]
       36 RETURN                           R4 1

PROTO_16:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K0 ["R15_PARTS"]
        5 GETTABLEKS                       R5 R5 K1 ["UpperTorso"]
        7 GETTABLE                         R4 R1 R5
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["R15_PARTS"]
       11 GETTABLEKS                       R6 R6 K2 ["LowerTorso"]
       13 GETTABLE                         R5 R1 R6
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K0 ["R15_PARTS"]
       17 GETTABLEKS                       R7 R7 K3 ["LeftFoot"]
       19 GETTABLE                         R6 R1 R7
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K0 ["R15_PARTS"]
       23 GETTABLEKS                       R8 R8 K4 ["RightFoot"]
       25 GETTABLE                         R7 R1 R8
       26 JUMPIFNOT                        R4 ; [+28]
       27 JUMPIFNOT                        R5 ; [+27]
       28 GETTABLEKS                       R8 R4 K5 ["Part1"]
       30 JUMPIFEQ                         R0 R8 ; [+14]
       32 GETTABLEKS                       R8 R5 K5 ["Part1"]
       34 JUMPIFEQ                         R0 R8 ; [+10]
       36 GETTABLEKS                       R8 R4 K5 ["Part1"]
       38 LOADB                            R9 1
       39 SETTABLE                         R9 R3 R8
       40 GETTABLEKS                       R8 R5 K5 ["Part1"]
       42 LOADB                            R9 1
       43 SETTABLE                         R9 R3 R8
       44 JUMP                             ; [+10]
       45 JUMPIFNOT                        R6 ; [+9]
       46 JUMPIFNOT                        R7 ; [+8]
       47 GETTABLEKS                       R8 R6 K5 ["Part1"]
       49 LOADB                            R9 1
       50 SETTABLE                         R9 R3 R8
       51 GETTABLEKS                       R8 R7 K5 ["Part1"]
       53 LOADB                            R9 1
       54 SETTABLE                         R9 R3 R8
       55 JUMPIFNOT                        R2 ; [+65]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K0 ["R15_PARTS"]
       59 GETTABLEKS                       R9 R9 K1 ["UpperTorso"]
       61 GETTABLE                         R8 R2 R9
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K0 ["R15_PARTS"]
       65 GETTABLEKS                       R10 R10 K2 ["LowerTorso"]
       67 GETTABLE                         R9 R2 R10
       68 JUMPIFNOT                        R8 ; [+52]
       69 JUMPIFNOT                        R9 ; [+51]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K6 ["getPart1"]
       73 MOVE                             R11 R8
       74 CALL                             R10 1 1
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R11 R11 K6 ["getPart1"]
       78 MOVE                             R12 R9
       79 CALL                             R11 1 1
       80 JUMPIFEQ                         R0 R10 ; [+10]
       82 JUMPIFEQ                         R0 R11 ; [+8]
       84 JUMPIFNOT                        R10 ; [+36]
       85 JUMPIFNOT                        R11 ; [+35]
       86 LOADB                            R12 1
       87 SETTABLE                         R12 R3 R10
       88 LOADB                            R12 1
       89 SETTABLE                         R12 R3 R11
       90 RETURN                           R3 1
       91 GETUPVAL                         R13 0
       92 GETTABLEKS                       R13 R13 K0 ["R15_PARTS"]
       94 GETTABLEKS                       R13 R13 K3 ["LeftFoot"]
       96 GETTABLE                         R12 R2 R13
       97 GETUPVAL                         R14 0
       98 GETTABLEKS                       R14 R14 K0 ["R15_PARTS"]
      100 GETTABLEKS                       R14 R14 K4 ["RightFoot"]
      102 GETTABLE                         R13 R2 R14
      103 JUMPIFNOT                        R12 ; [+17]
      104 JUMPIFNOT                        R13 ; [+16]
      105 GETUPVAL                         R14 1
      106 GETTABLEKS                       R14 R14 K6 ["getPart1"]
      108 MOVE                             R15 R12
      109 CALL                             R14 1 1
      110 GETUPVAL                         R15 1
      111 GETTABLEKS                       R15 R15 K6 ["getPart1"]
      113 MOVE                             R16 R13
      114 CALL                             R15 1 1
      115 JUMPIFNOT                        R14 ; [+5]
      116 JUMPIFNOT                        R15 ; [+4]
      117 LOADB                            R16 1
      118 SETTABLE                         R16 R3 R14
      119 LOADB                            R16 1
      120 SETTABLE                         R16 R3 R15
      121 RETURN                           R3 1

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getRigInfo"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K1 ["PartNameToMotor"]
        9 GETTABLEKS                       R4 R2 K2 ["PartNameToAnimConstraint"]
       11 GETIMPORT                        R5 K4 [pairs]
       13 MOVE                             R6 R3
       14 CALL                             R5 1 3
       15 FORGPREP_NEXT                    R5
       16 GETTABLEKS                       R10 R9 K5 ["Part0"]
       18 JUMPIFNOT                        R10 ; [+21]
       19 GETTABLEKS                       R10 R9 K6 ["Part1"]
       21 JUMPIFNOT                        R10 ; [+18]
       22 GETTABLEKS                       R10 R9 K5 ["Part0"]
       24 GETTABLEKS                       R10 R10 K7 ["Name"]
       26 GETTABLEKS                       R11 R9 K5 ["Part0"]
       28 GETTABLEKS                       R11 R11 K8 ["CFrame"]
       30 SETTABLE                         R11 R1 R10
       31 GETTABLEKS                       R10 R9 K6 ["Part1"]
       33 GETTABLEKS                       R10 R10 K7 ["Name"]
       35 GETTABLEKS                       R11 R9 K6 ["Part1"]
       37 GETTABLEKS                       R11 R11 K8 ["CFrame"]
       39 SETTABLE                         R11 R1 R10
       40 FORGLOOP                         R5 2 ; [-25]
       42 JUMPIFNOT                        R4 ; [+29]
       43 GETIMPORT                        R5 K4 [pairs]
       45 MOVE                             R6 R4
       46 CALL                             R5 1 3
       47 FORGPREP_NEXT                    R5
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K9 ["getPart0"]
       51 MOVE                             R11 R9
       52 CALL                             R10 1 1
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R11 R11 K10 ["getPart1"]
       56 MOVE                             R12 R9
       57 CALL                             R11 1 1
       58 JUMPIFNOT                        R10 ; [+11]
       59 JUMPIFNOT                        R11 ; [+10]
       60 GETTABLEKS                       R12 R10 K7 ["Name"]
       62 GETTABLEKS                       R13 R10 K8 ["CFrame"]
       64 SETTABLE                         R13 R1 R12
       65 GETTABLEKS                       R12 R11 K7 ["Name"]
       67 GETTABLEKS                       R13 R11 K8 ["CFrame"]
       69 SETTABLE                         R13 R1 R12
       70 FORGLOOP                         R5 2 ; [-23]
       72 RETURN                           R1 1

PROTO_18:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["None"]
        4 JUMPIFNOTEQ                      R1 R4 ; [+2]
        6 RETURN                           R0 0
        7 FASTCALL1                        ASSERT R1 ; [+3]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R4 K2 [assert]
       11 CALL                             R4 1 0
       12 GETIMPORT                        R4 K4 [pairs]
       14 MOVE                             R5 R0
       15 CALL                             R4 1 3
       16 FORGPREP_NEXT                    R4
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K5 ["getPart0"]
       20 MOVE                             R10 R8
       21 CALL                             R9 1 1
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K6 ["getPart1"]
       25 MOVE                             R11 R8
       26 CALL                             R10 1 1
       27 LOADK                            R13 K7 ["BallSocketConstraint"]
       28 NAMECALL                         R11 R8 K8 ["IsA"]
       30 CALL                             R11 2 1
       31 JUMPIFNOT                        R11 ; [+236]
       32 JUMPIFEQKNIL                     R9 ; [+235]
       34 JUMPIFEQKNIL                     R10 ; [+233]
       36 GETTABLE                         R11 R2 R9
       37 JUMPIFNOT                        R11 ; [+2]
       38 GETTABLE                         R11 R2 R10
       39 JUMPIF                           R11 ; [+4]
       40 GETTABLE                         R11 R3 R9
       41 JUMPIFNOT                        R11 ; [+226]
       42 GETTABLE                         R11 R3 R10
       43 JUMPIFNOT                        R11 ; [+224]
       44 GETTABLEKS                       R11 R8 K9 ["Attachment0"]
       46 JUMPIFNOT                        R11 ; [+221]
       47 GETTABLEKS                       R11 R8 K10 ["Attachment1"]
       49 JUMPIFNOT                        R11 ; [+218]
       50 LOADNIL                          R11
       51 GETIMPORT                        R12 K4 [pairs]
       53 MOVE                             R13 R0
       54 CALL                             R12 1 3
       55 FORGPREP_NEXT                    R12
       56 GETUPVAL                         R17 1
       57 GETTABLEKS                       R17 R17 K5 ["getPart0"]
       59 MOVE                             R18 R16
       60 CALL                             R17 1 1
       61 JUMPIFNOTEQ                      R17 R10 ; [+2]
       63 MOVE                             R11 R16
       64 FORGLOOP                         R12 2 ; [-9]
       66 LOADNIL                          R12
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K6 ["getPart1"]
       70 MOVE                             R14 R11
       71 CALL                             R13 1 1
       72 JUMPIFNOT                        R13 ; [+15]
       73 JUMPIFNOT                        R10 ; [+14]
       74 GETTABLEKS                       R15 R13 K11 ["Name"]
       76 GETTABLE                         R14 R1 R15
       77 GETTABLEKS                       R16 R10 K11 ["Name"]
       79 GETTABLE                         R15 R1 R16
       80 GETTABLEKS                       R17 R14 K12 ["Position"]
       82 GETTABLEKS                       R18 R15 K12 ["Position"]
       84 SUB                              R16 R17 R18
       85 GETTABLEKS                       R12 R16 K13 ["Unit"]
       87 JUMP                             ; [+15]
       88 JUMPIFNOT                        R10 ; [+14]
       89 JUMPIFNOT                        R9 ; [+13]
       90 GETTABLEKS                       R15 R10 K11 ["Name"]
       92 GETTABLE                         R14 R1 R15
       93 GETTABLEKS                       R16 R9 K11 ["Name"]
       95 GETTABLE                         R15 R1 R16
       96 GETTABLEKS                       R17 R14 K12 ["Position"]
       98 GETTABLEKS                       R18 R15 K12 ["Position"]
      100 SUB                              R16 R17 R18
      101 GETTABLEKS                       R12 R16 K13 ["Unit"]
      103 FASTCALL1                        ASSERT R12 ; [+3]
      104 MOVE                             R15 R12
      105 GETIMPORT                        R14 K2 [assert]
      107 CALL                             R14 1 0
      108 GETTABLE                         R14 R2 R9
      109 JUMPIFNOT                        R14 ; [+74]
      110 GETTABLE                         R14 R2 R10
      111 JUMPIFNOT                        R14 ; [+72]
      112 GETTABLE                         R14 R2 R9
      113 GETTABLE                         R15 R2 R9
      114 GETTABLEKS                       R15 R15 K14 ["Attachments"]
      116 JUMPIF                           R15 ; [+2]
      117 NEWTABLE                         R15 0 0
      119 SETTABLEKS                       R15 R14 K14 ["Attachments"]
      121 GETTABLE                         R14 R2 R10
      122 GETTABLE                         R15 R2 R10
      123 GETTABLEKS                       R15 R15 K14 ["Attachments"]
      125 JUMPIF                           R15 ; [+2]
      126 NEWTABLE                         R15 0 0
      128 SETTABLEKS                       R15 R14 K14 ["Attachments"]
      130 GETTABLE                         R15 R2 R9
      131 GETTABLEKS                       R15 R15 K14 ["Attachments"]
      133 DUPTABLE                         R16 K17 [{"Axis", "SecondaryAxis", "Name"}]
      134 GETTABLEKS                       R17 R8 K9 ["Attachment0"]
      136 GETTABLEKS                       R17 R17 K15 ["Axis"]
      138 SETTABLEKS                       R17 R16 K15 ["Axis"]
      140 GETTABLEKS                       R17 R8 K9 ["Attachment0"]
      142 GETTABLEKS                       R17 R17 K16 ["SecondaryAxis"]
      144 SETTABLEKS                       R17 R16 K16 ["SecondaryAxis"]
      146 GETTABLEKS                       R17 R8 K9 ["Attachment0"]
      148 GETTABLEKS                       R17 R17 K11 ["Name"]
      150 SETTABLEKS                       R17 R16 K11 ["Name"]
      152 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      154 GETIMPORT                        R14 K20 [table.insert]
      156 CALL                             R14 2 0
      157 GETTABLE                         R15 R2 R10
      158 GETTABLEKS                       R15 R15 K14 ["Attachments"]
      160 DUPTABLE                         R16 K17 [{"Axis", "SecondaryAxis", "Name"}]
      161 GETTABLEKS                       R17 R8 K10 ["Attachment1"]
      163 GETTABLEKS                       R17 R17 K15 ["Axis"]
      165 SETTABLEKS                       R17 R16 K15 ["Axis"]
      167 GETTABLEKS                       R17 R8 K10 ["Attachment1"]
      169 GETTABLEKS                       R17 R17 K16 ["SecondaryAxis"]
      171 SETTABLEKS                       R17 R16 K16 ["SecondaryAxis"]
      173 GETTABLEKS                       R17 R8 K10 ["Attachment1"]
      175 GETTABLEKS                       R17 R17 K11 ["Name"]
      177 SETTABLEKS                       R17 R16 K11 ["Name"]
      179 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      181 GETIMPORT                        R14 K20 [table.insert]
      183 CALL                             R14 2 0
      184 GETTABLE                         R14 R3 R9
      185 JUMPIFNOT                        R14 ; [+74]
      186 GETTABLE                         R14 R3 R10
      187 JUMPIFNOT                        R14 ; [+72]
      188 GETTABLE                         R14 R3 R9
      189 GETTABLE                         R15 R3 R9
      190 GETTABLEKS                       R15 R15 K14 ["Attachments"]
      192 JUMPIF                           R15 ; [+2]
      193 NEWTABLE                         R15 0 0
      195 SETTABLEKS                       R15 R14 K14 ["Attachments"]
      197 GETTABLE                         R14 R3 R10
      198 GETTABLE                         R15 R3 R10
      199 GETTABLEKS                       R15 R15 K14 ["Attachments"]
      201 JUMPIF                           R15 ; [+2]
      202 NEWTABLE                         R15 0 0
      204 SETTABLEKS                       R15 R14 K14 ["Attachments"]
      206 GETTABLE                         R15 R3 R9
      207 GETTABLEKS                       R15 R15 K14 ["Attachments"]
      209 DUPTABLE                         R16 K17 [{"Axis", "SecondaryAxis", "Name"}]
      210 GETTABLEKS                       R17 R8 K9 ["Attachment0"]
      212 GETTABLEKS                       R17 R17 K15 ["Axis"]
      214 SETTABLEKS                       R17 R16 K15 ["Axis"]
      216 GETTABLEKS                       R17 R8 K9 ["Attachment0"]
      218 GETTABLEKS                       R17 R17 K16 ["SecondaryAxis"]
      220 SETTABLEKS                       R17 R16 K16 ["SecondaryAxis"]
      222 GETTABLEKS                       R17 R8 K9 ["Attachment0"]
      224 GETTABLEKS                       R17 R17 K11 ["Name"]
      226 SETTABLEKS                       R17 R16 K11 ["Name"]
      228 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      230 GETIMPORT                        R14 K20 [table.insert]
      232 CALL                             R14 2 0
      233 GETTABLE                         R15 R3 R10
      234 GETTABLEKS                       R15 R15 K14 ["Attachments"]
      236 DUPTABLE                         R16 K17 [{"Axis", "SecondaryAxis", "Name"}]
      237 GETTABLEKS                       R17 R8 K10 ["Attachment1"]
      239 GETTABLEKS                       R17 R17 K15 ["Axis"]
      241 SETTABLEKS                       R17 R16 K15 ["Axis"]
      243 GETTABLEKS                       R17 R8 K10 ["Attachment1"]
      245 GETTABLEKS                       R17 R17 K16 ["SecondaryAxis"]
      247 SETTABLEKS                       R17 R16 K16 ["SecondaryAxis"]
      249 GETTABLEKS                       R17 R8 K10 ["Attachment1"]
      251 GETTABLEKS                       R17 R17 K11 ["Name"]
      253 SETTABLEKS                       R17 R16 K11 ["Name"]
      255 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      257 GETIMPORT                        R14 K20 [table.insert]
      259 CALL                             R14 2 0
      260 GETTABLEKS                       R14 R8 K9 ["Attachment0"]
      262 SETTABLEKS                       R12 R14 K15 ["Axis"]
      264 GETTABLEKS                       R14 R8 K10 ["Attachment1"]
      266 SETTABLEKS                       R12 R14 K15 ["Axis"]
      268 FORGLOOP                         R4 2 ; [-252]
      270 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R4
        4 LOADN                            R6 -1
        5 JUMPIFEQKNIL                     R5 ; [+33]
        7 MOVE                             R7 R5
        8 JUMPIF                           R7 ; [+2]
        9 LOADNIL                          R5
       10 JUMP                             ; [+26]
       11 FASTCALL1                        ASSERT R7 ; [+3]
       12 MOVE                             R9 R7
       13 GETIMPORT                        R8 K1 [assert]
       15 CALL                             R8 1 0
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETTABLEKS                       R9 R7 K2 ["Name"]
       19 GETTABLE                         R8 R2 R9
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETTABLEKS                       R5 R8 K3 ["Part0"]
       23 JUMP                             ; [+13]
       24 JUMPIFNOT                        R3 ; [+11]
       25 GETTABLEKS                       R9 R7 K2 ["Name"]
       27 GETTABLE                         R8 R3 R9
       28 JUMPIFNOT                        R8 ; [+7]
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K4 ["getPart0"]
       32 MOVE                             R10 R8
       33 CALL                             R9 1 1
       34 MOVE                             R5 R9
       35 JUMP                             ; [+1]
       36 LOADNIL                          R5
       37 ADDK                             R6 R6 K5 [1]
       38 JUMPBACK                         ; [-34]
       39 MOVE                             R1 R6
       40 LOADN                            R2 0
       41 JUMPIFNOTLE                      R2 R1 ; [+51]
       43 GETUPVAL                         R3 3
       44 GETTABLE                         R2 R3 R0
       45 JUMPIF                           R2 ; [+13]
       46 GETUPVAL                         R2 4
       47 GETUPVAL                         R5 4
       48 LENGTH                           R4 R5
       49 ADDK                             R3 R4 K5 [1]
       50 DUPTABLE                         R4 K8 [{"Item", "Priority"}]
       51 SETTABLEKS                       R0 R4 K6 ["Item"]
       53 SETTABLEKS                       R1 R4 K7 ["Priority"]
       55 SETTABLE                         R4 R2 R3
       56 GETUPVAL                         R2 3
       57 LOADB                            R3 1
       58 SETTABLE                         R3 R2 R0
       59 GETUPVAL                         R2 0
       60 GETUPVAL                         R3 1
       61 MOVE                             R4 R0
       62 JUMPIF                           R4 ; [+2]
       63 LOADNIL                          R0
       64 JUMP                             ; [+26]
       65 FASTCALL1                        ASSERT R4 ; [+3]
       66 MOVE                             R6 R4
       67 GETIMPORT                        R5 K1 [assert]
       69 CALL                             R5 1 0
       70 JUMPIFNOT                        R2 ; [+7]
       71 GETTABLEKS                       R6 R4 K2 ["Name"]
       73 GETTABLE                         R5 R2 R6
       74 JUMPIFNOT                        R5 ; [+3]
       75 GETTABLEKS                       R0 R5 K3 ["Part0"]
       77 JUMP                             ; [+13]
       78 JUMPIFNOT                        R3 ; [+11]
       79 GETTABLEKS                       R6 R4 K2 ["Name"]
       81 GETTABLE                         R5 R3 R6
       82 JUMPIFNOT                        R5 ; [+7]
       83 GETUPVAL                         R6 2
       84 GETTABLEKS                       R6 R6 K4 ["getPart0"]
       86 MOVE                             R7 R5
       87 CALL                             R6 1 1
       88 MOVE                             R0 R6
       89 JUMP                             ; [+1]
       90 LOADNIL                          R0
       91 SUBK                             R1 R1 K5 [1]
       92 JUMPBACK                         ; [-53]
       93 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["Priority"]
        2 GETTABLEKS                       R4 R1 K0 ["Priority"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["clearCache"]
        3 CALL                             R5 0 0
        4 NEWTABLE                         R5 0 0
        6 NEWTABLE                         R6 0 0
        8 NEWTABLE                         R7 0 0
       10 NEWTABLE                         R8 0 0
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K1 ["getRigInfo"]
       15 MOVE                             R10 R0
       16 CALL                             R9 1 1
       17 GETTABLEKS                       R10 R9 K2 ["PartNameToMotor"]
       19 GETTABLEKS                       R11 R9 K3 ["PartNameToConstraint"]
       21 GETTABLEKS                       R12 R9 K4 ["PartNameToAnimConstraint"]
       23 NEWCLOSURE                       R13 P0
       24 CAPTURE                          VAL R10
       25 CAPTURE                          VAL R12
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R6
       29 JUMPIFNOT                        R2 ; [+8]
       30 GETUPVAL                         R14 1
       31 GETTABLEKS                       R14 R14 K5 ["pinForLimbMode"]
       33 MOVE                             R15 R1
       34 MOVE                             R16 R10
       35 MOVE                             R17 R12
       36 CALL                             R14 3 1
       37 MOVE                             R4 R14
       38 MOVE                             R14 R13
       39 MOVE                             R15 R1
       40 CALL                             R14 1 0
       41 GETIMPORT                        R14 K7 [pairs]
       43 MOVE                             R15 R4
       44 CALL                             R14 1 3
       45 FORGPREP_NEXT                    R14
       46 JUMPIFNOT                        R18 ; [+9]
       47 GETTABLEKS                       R19 R17 K8 ["Name"]
       49 GETTABLEKS                       R20 R1 K8 ["Name"]
       51 JUMPIFEQ                         R19 R20 ; [+4]
       53 MOVE                             R19 R13
       54 MOVE                             R20 R17
       55 CALL                             R19 1 0
       56 FORGLOOP                         R14 2 ; [-11]
       58 GETIMPORT                        R14 K11 [table.sort]
       60 MOVE                             R15 R6
       61 DUPCLOSURE                       R16 K12 [PROTO_20]
       62 CALL                             R14 2 0
       63 LOADN                            R16 1
       64 LENGTH                           R14 R6
       65 LOADN                            R15 1
       66 FORNPREP                         R14
       67 GETTABLE                         R17 R6 R16
       68 GETTABLEKS                       R17 R17 K13 ["Item"]
       70 JUMPIFNOT                        R17 ; [+26]
       71 GETUPVAL                         R18 2
       72 MOVE                             R19 R17
       73 GETTABLEKS                       R21 R17 K8 ["Name"]
       75 GETTABLE                         R20 R10 R21
       76 MOVE                             R21 R7
       77 CALL                             R18 3 0
       78 JUMPIFNOT                        R12 ; [+7]
       79 GETUPVAL                         R18 3
       80 MOVE                             R19 R17
       81 GETTABLEKS                       R21 R17 K8 ["Name"]
       83 GETTABLE                         R20 R12 R21
       84 MOVE                             R21 R8
       85 CALL                             R18 3 0
       86 GETTABLE                         R18 R4 R17
       87 JUMPIFNOT                        R18 ; [+9]
       88 GETTABLEKS                       R18 R17 K8 ["Name"]
       90 GETTABLEKS                       R19 R1 K8 ["Name"]
       92 JUMPIFEQ                         R18 R19 ; [+4]
       94 LOADB                            R18 1
       95 SETTABLEKS                       R18 R17 K14 ["Anchored"]
       97 FORNLOOP                         R14
       98 GETUPVAL                         R14 4
       99 MOVE                             R15 R11
      100 MOVE                             R16 R3
      101 MOVE                             R17 R7
      102 MOVE                             R18 R8
      103 CALL                             R14 4 0
      104 GETIMPORT                        R14 K7 [pairs]
      106 MOVE                             R15 R7
      107 CALL                             R14 1 3
      108 FORGPREP_NEXT                    R14
      109 GETTABLEKS                       R20 R17 K8 ["Name"]
      111 GETTABLE                         R19 R11 R20
      112 JUMPIFNOT                        R19 ; [+3]
      113 LOADB                            R20 1
      114 SETTABLEKS                       R20 R19 K15 ["Enabled"]
      116 FORGLOOP                         R14 1 ; [-8]
      118 GETIMPORT                        R14 K7 [pairs]
      120 MOVE                             R15 R8
      121 CALL                             R14 1 3
      122 FORGPREP_NEXT                    R14
      123 GETTABLEKS                       R20 R17 K8 ["Name"]
      125 GETTABLE                         R19 R11 R20
      126 JUMPIFNOT                        R19 ; [+3]
      127 LOADB                            R20 1
      128 SETTABLEKS                       R20 R19 K15 ["Enabled"]
      130 FORGLOOP                         R14 1 ; [-8]
      132 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["RigInfo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["LuaFlags"]
       36 GETTABLEKS                       R5 R5 K13 ["GetFFlagRootMotion"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 8 0
       41 DUPCLOSURE                       R6 K14 [PROTO_0]
       42 DUPCLOSURE                       R7 K15 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R7 R5 K16 ["buildR15Constraints"]
       48 DUPCLOSURE                       R7 K17 [PROTO_2]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R7 R5 K18 ["canUseIK"]
       54 DUPCLOSURE                       R7 K19 [PROTO_3]
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R8 K20 [PROTO_4]
       57 DUPCLOSURE                       R9 K21 [PROTO_5]
       58 DUPCLOSURE                       R10 K22 [PROTO_6]
       59 DUPCLOSURE                       R11 K23 [PROTO_7]
       60 DUPCLOSURE                       R12 K24 [PROTO_8]
       61 CAPTURE                          VAL R2
       62 DUPCLOSURE                       R13 K25 [PROTO_10]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R12
       65 DUPCLOSURE                       R14 K26 [PROTO_11]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R13
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R14 R5 K27 ["ikDragEnd"]
       72 DUPCLOSURE                       R14 K28 [PROTO_12]
       73 DUPCLOSURE                       R15 K29 [PROTO_13]
       74 DUPCLOSURE                       R16 K30 [PROTO_14]
       75 CAPTURE                          VAL R2
       76 DUPCLOSURE                       R17 K31 [PROTO_15]
       77 CAPTURE                          VAL R2
       78 DUPCLOSURE                       R18 K32 [PROTO_16]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R18 R5 K33 ["pinForLimbMode"]
       83 DUPCLOSURE                       R18 K34 [PROTO_17]
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R18 R5 K35 ["getPoseCFrames"]
       87 DUPCLOSURE                       R18 K36 [PROTO_18]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R2
       90 DUPCLOSURE                       R19 K37 [PROTO_21]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R18
       96 SETTABLEKS                       R19 R5 K38 ["ikDragStart"]
       98 RETURN                           R5 1
