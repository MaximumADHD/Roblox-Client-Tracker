PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["InstanceRef"] ; [+27]
        4 GETTABLEKS                       R1 R0 K2 ["instanceRefType"]
        6 JUMPIFNOT                        R1 ; [+9]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["fromInstanceRefType"]
       10 GETTABLEKS                       R2 R0 K4 ["readonly"]
       12 GETTABLEKS                       R3 R0 K2 ["instanceRefType"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1
       16 GETIMPORT                        R1 K6 [warn]
       18 LOADK                            R3 K7 ["Didn't get a ClassName for InstanceRef property %* on %*"]
       19 GETTABLEKS                       R5 R0 K8 ["name"]
       21 GETTABLEKS                       R6 R0 K9 ["owner"]
       23 NAMECALL                         R3 R3 K10 ["format"]
       25 CALL                             R3 3 1
       26 MOVE                             R2 R3
       27 CALL                             R1 1 0
       28 LOADNIL                          R1
       29 RETURN                           R1 1
       30 GETTABLEKS                       R1 R0 K0 ["type"]
       32 JUMPIFNOTEQKS                    R1 K11 ["Content"] ; [+28]
       34 GETTABLEKS                       R1 R0 K12 ["assetType"]
       36 JUMPIFEQKNIL                     R1 ; [+10]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K13 ["fromContentType"]
       41 GETTABLEKS                       R2 R0 K4 ["readonly"]
       43 GETTABLEKS                       R3 R0 K12 ["assetType"]
       45 CALL                             R1 2 -1
       46 RETURN                           R1 -1
       47 GETIMPORT                        R1 K6 [warn]
       49 LOADK                            R3 K14 ["Didn't get an AssetType for Content property %* on %*"]
       50 GETTABLEKS                       R5 R0 K8 ["name"]
       52 GETTABLEKS                       R6 R0 K9 ["owner"]
       54 NAMECALL                         R3 R3 K10 ["format"]
       56 CALL                             R3 3 1
       57 MOVE                             R2 R3
       58 CALL                             R1 1 0
       59 LOADNIL                          R1
       60 RETURN                           R1 1
       61 GETTABLEKS                       R1 R0 K0 ["type"]
       63 JUMPIFNOTEQKS                    R1 K15 ["Enum"] ; [+36]
       65 GETTABLEKS                       R1 R0 K16 ["enumName"]
       67 JUMPIFEQKNIL                     R1 ; [+18]
       69 GETUPVAL                         R1 0
       70 GETTABLEKS                       R1 R1 K17 ["fromEnumType"]
       72 GETTABLEKS                       R2 R0 K4 ["readonly"]
       74 LOADK                            R3 K18 ["Static"]
       75 GETIMPORT                        R6 K19 [Enum]
       77 GETTABLEKS                       R7 R0 K16 ["enumName"]
       79 GETTABLE                         R5 R6 R7
       80 FASTCALL1                        TOSTRING R5 ; [+2]
       81 GETIMPORT                        R4 K21 [tostring]
       83 CALL                             R4 1 1
       84 CALL                             R1 3 -1
       85 RETURN                           R1 -1
       86 GETIMPORT                        R1 K6 [warn]
       88 LOADK                            R3 K22 ["Didn't get an Enum name for Enum property %* on %*"]
       89 GETTABLEKS                       R5 R0 K8 ["name"]
       91 GETTABLEKS                       R6 R0 K9 ["owner"]
       93 NAMECALL                         R3 R3 K10 ["format"]
       95 CALL                             R3 3 1
       96 MOVE                             R2 R3
       97 CALL                             R1 1 0
       98 LOADNIL                          R1
       99 RETURN                           R1 1
      100 GETTABLEKS                       R1 R0 K0 ["type"]
      102 JUMPIFNOTEQKS                    R1 K23 ["DynamicEnum"] ; [+11]
      104 GETUPVAL                         R1 0
      105 GETTABLEKS                       R1 R1 K17 ["fromEnumType"]
      107 GETTABLEKS                       R2 R0 K4 ["readonly"]
      109 LOADK                            R3 K24 ["Dynamic"]
      110 GETTABLEKS                       R4 R0 K8 ["name"]
      112 CALL                             R1 3 -1
      113 RETURN                           R1 -1
      114 GETUPVAL                         R1 0
      115 GETTABLEKS                       R1 R1 K25 ["fromType"]
      117 GETTABLEKS                       R2 R0 K0 ["type"]
      119 GETTABLEKS                       R3 R0 K4 ["readonly"]
      121 CALL                             R1 2 -1
      122 RETURN                           R1 -1

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
       20 JUMPIFNOT                        R4 ; [+19]
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R10 2
       26 MOVE                             R11 R9
       27 CALL                             R10 1 1
       28 JUMPIFNOT                        R10 ; [+8]
       29 GETUPVAL                         R11 3
       30 GETTABLEKS                       R12 R9 K4 ["name"]
       32 GETTABLEKS                       R13 R9 K5 ["owner"]
       34 LOADK                            R14 K6 ["Property"]
       35 CALL                             R11 3 1
       36 SETTABLE                         R10 R3 R11
       37 FORGLOOP                         R5 2 ; [-13]
       39 JUMP                             ; [+6]
       40 GETIMPORT                        R5 K8 [warn]
       42 LOADK                            R7 K9 ["Missing info for type "]
       43 MOVE                             R8 R0
       44 CONCAT                           R6 R7 R8
       45 CALL                             R5 1 0
       46 GETUPVAL                         R5 0
       47 SETTABLE                         R3 R5 R0
       48 RETURN                           R3 1

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
       47 NEWTABLE                         R8 0 0
       49 DUPCLOSURE                       R9 K15 [PROTO_0]
       50 CAPTURE                          VAL R4
       51 DUPCLOSURE                       R10 K16 [PROTO_3]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 DUPCLOSURE                       R11 K17 [PROTO_4]
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R3
       59 RETURN                           R11 1
