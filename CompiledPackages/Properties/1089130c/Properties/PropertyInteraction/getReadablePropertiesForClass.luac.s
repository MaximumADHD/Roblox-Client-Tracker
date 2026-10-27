PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["InstanceRef"] ; [+26]
        4 GETTABLEKS                       R2 R0 K2 ["instanceRefType"]
        6 JUMPIFNOT                        R2 ; [+9]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["fromInstanceRefType"]
       10 GETTABLEKS                       R3 R0 K4 ["readonly"]
       12 GETTABLEKS                       R4 R0 K2 ["instanceRefType"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 GETIMPORT                        R2 K6 [warn]
       18 LOADK                            R3 K7 ["Didn't get a ClassName for InstanceRef property %* on %*"]
       19 GETTABLEKS                       R5 R0 K8 ["name"]
       21 GETTABLEKS                       R6 R0 K9 ["owner"]
       23 NAMECALL                         R3 R3 K10 ["format"]
       25 CALL                             R3 3 1
       26 CALL                             R2 1 0
       27 LOADNIL                          R2
       28 RETURN                           R2 1
       29 GETTABLEKS                       R2 R0 K0 ["type"]
       31 JUMPIFNOTEQKS                    R2 K11 ["Content"] ; [+27]
       33 GETTABLEKS                       R2 R0 K12 ["assetType"]
       35 JUMPIFEQKNIL                     R2 ; [+10]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K13 ["fromContentType"]
       40 GETTABLEKS                       R3 R0 K4 ["readonly"]
       42 GETTABLEKS                       R4 R0 K12 ["assetType"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1
       46 GETIMPORT                        R2 K6 [warn]
       48 LOADK                            R3 K14 ["Didn't get an AssetType for Content property %* on %*"]
       49 GETTABLEKS                       R5 R0 K8 ["name"]
       51 GETTABLEKS                       R6 R0 K9 ["owner"]
       53 NAMECALL                         R3 R3 K10 ["format"]
       55 CALL                             R3 3 1
       56 CALL                             R2 1 0
       57 LOADNIL                          R2
       58 RETURN                           R2 1
       59 GETTABLEKS                       R2 R0 K0 ["type"]
       61 JUMPIFNOTEQKS                    R2 K15 ["Enum"] ; [+35]
       63 GETTABLEKS                       R2 R0 K16 ["enumName"]
       65 JUMPIFEQKNIL                     R2 ; [+18]
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R2 R2 K17 ["fromEnumType"]
       70 GETTABLEKS                       R3 R0 K4 ["readonly"]
       72 LOADK                            R4 K18 ["Static"]
       73 GETIMPORT                        R7 K19 [Enum]
       75 GETTABLEKS                       R8 R0 K16 ["enumName"]
       77 GETTABLE                         R6 R7 R8
       78 FASTCALL1                        TOSTRING R6 ; [+2]
       79 GETIMPORT                        R5 K21 [tostring]
       81 CALL                             R5 1 1
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1
       84 GETIMPORT                        R2 K6 [warn]
       86 LOADK                            R3 K22 ["Didn't get an Enum name for Enum property %* on %*"]
       87 GETTABLEKS                       R5 R0 K8 ["name"]
       89 GETTABLEKS                       R6 R0 K9 ["owner"]
       91 NAMECALL                         R3 R3 K10 ["format"]
       93 CALL                             R3 3 1
       94 CALL                             R2 1 0
       95 LOADNIL                          R2
       96 RETURN                           R2 1
       97 GETTABLEKS                       R2 R0 K0 ["type"]
       99 JUMPIFNOTEQKS                    R2 K23 ["DynamicEnum"] ; [+11]
      101 GETUPVAL                         R2 0
      102 GETTABLEKS                       R2 R2 K17 ["fromEnumType"]
      104 GETTABLEKS                       R3 R0 K4 ["readonly"]
      106 LOADK                            R4 K24 ["Dynamic"]
      107 GETTABLEKS                       R5 R0 K8 ["name"]
      109 CALL                             R2 3 -1
      110 RETURN                           R2 -1
      111 GETTABLEKS                       R2 R0 K0 ["type"]
      113 JUMPIFEQKS                       R2 K25 ["number"] ; [+9]
      115 GETTABLEKS                       R2 R0 K0 ["type"]
      117 JUMPIFEQKS                       R2 K26 ["float"] ; [+5]
      119 GETTABLEKS                       R2 R0 K0 ["type"]
      121 JUMPIFNOTEQKS                    R2 K27 ["int"] ; [+30]
      123 GETUPVAL                         R3 1
      124 GETTABLEKS                       R3 R3 K28 ["propertyPatches"]
      126 GETUPVAL                         R4 2
      127 MOVE                             R5 R1
      128 CALL                             R4 1 1
      129 GETTABLE                         R2 R3 R4
      130 GETUPVAL                         R3 0
      131 GETTABLEKS                       R3 R3 K29 ["fromNumber"]
      133 GETTABLEKS                       R4 R0 K4 ["readonly"]
      135 GETTABLEKS                       R6 R0 K0 ["type"]
      137 JUMPIFEQKS                       R6 K25 ["number"] ; [+5]
      139 GETTABLEKS                       R6 R0 K0 ["type"]
      141 JUMPIFNOTEQKS                    R6 K26 ["float"] ; [+3]
      143 LOADK                            R5 K30 ["decimal"]
      144 JUMP                             ; [+1]
      145 LOADK                            R5 K31 ["integer"]
      146 MOVE                             R6 R2
      147 JUMPIFNOT                        R6 ; [+2]
      148 GETTABLEKS                       R6 R2 K32 ["unit"]
      150 CALL                             R3 3 -1
      151 RETURN                           R3 -1
      152 GETUPVAL                         R2 0
      153 GETTABLEKS                       R2 R2 K33 ["fromType"]
      155 GETTABLEKS                       R3 R0 K0 ["type"]
      157 GETTABLEKS                       R4 R0 K4 ["readonly"]
      159 CALL                             R2 2 -1
      160 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["className"]
        3 GETTABLE                         R2 R3 R4
        4 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Luau"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R0 K3 ["info"]
       12 MOVE                             R3 R1
       13 RETURN                           R2 2

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["GetClassHierarchy"]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 LOADB                            R9 1
       11 SETTABLE                         R9 R3 R8
       12 FORGLOOP                         R4 2 ; [-3]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
       17 GETTABLEKS                       R4 R4 K2 ["map"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
       22 GETTABLEKS                       R5 R5 K3 ["filter"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K4 ["virtualPropertyDefinitions"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R3
       29 CALL                             R5 2 1
       30 DUPCLOSURE                       R6 K5 [PROTO_2]
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+7]
        6 GETIMPORT                        R3 K1 [error]
        8 LOADK                            R5 K2 ["Reflection interface is required to get readable properties for class: "]
        9 MOVE                             R6 R0
       10 CONCAT                           R4 R5 R6
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R4 R1 K3 ["ListProperties"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 JUMPIFNOT                        R4 ; [+20]
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R10 2
       26 GETTABLEKS                       R11 R9 K4 ["name"]
       28 GETTABLEKS                       R12 R9 K5 ["owner"]
       30 LOADK                            R13 K6 ["Property"]
       31 CALL                             R10 3 1
       32 GETUPVAL                         R11 3
       33 MOVE                             R12 R9
       34 MOVE                             R13 R10
       35 CALL                             R11 2 1
       36 JUMPIFNOT                        R11 ; [+1]
       37 SETTABLE                         R11 R3 R10
       38 FORGLOOP                         R5 2 ; [-14]
       40 JUMP                             ; [+6]
       41 GETIMPORT                        R5 K8 [warn]
       43 LOADK                            R7 K9 ["Missing info for type "]
       44 MOVE                             R8 R0
       45 CONCAT                           R6 R7 R8
       46 CALL                             R5 1 0
       47 GETUPVAL                         R5 0
       48 SETTABLE                         R3 R5 R0
       49 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyInteraction"]
       18 GETTABLEKS                       R4 R4 K9 ["PropertyId"]
       20 GETTABLEKS                       R4 R4 K10 ["fromClass"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["PropertyInteraction"]
       27 GETTABLEKS                       R5 R5 K11 ["PropertyInfo"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K12 ["PropertyTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["RpcTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K8 ["PropertyInteraction"]
       44 GETTABLEKS                       R8 R8 K14 ["SpecialProperties"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K8 ["PropertyInteraction"]
       51 GETTABLEKS                       R9 R9 K15 ["propertyIdToString"]
       53 CALL                             R8 1 1
       54 NEWTABLE                         R9 0 0
       56 DUPCLOSURE                       R10 K16 [PROTO_0]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R11 K17 [PROTO_3]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R12 K18 [PROTO_4]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R10
       68 RETURN                           R12 1
