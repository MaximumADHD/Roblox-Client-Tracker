PROTO_0:
        0 LOADK                            R1 K0 ["%*|%*|%*"]
        1 GETTABLEKS                       R3 R0 K1 ["Family"]
        3 GETTABLEKS                       R4 R0 K2 ["Weight"]
        5 GETTABLEKS                       R4 R4 K3 ["Value"]
        7 GETTABLEKS                       R5 R0 K4 ["Style"]
        9 GETTABLEKS                       R5 R5 K3 ["Value"]
       11 NAMECALL                         R1 R1 K5 ["format"]
       13 CALL                             R1 4 1
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 GETIMPORT                        R1 K2 [Enum.Font]
        8 NAMECALL                         R1 R1 K3 ["GetEnumItems"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 GETIMPORT                        R6 K5 [Enum.Font.Unknown]
       14 JUMPIFEQ                         R5 R6 ; [+23]
       16 GETIMPORT                        R6 K7 [pcall]
       18 GETIMPORT                        R7 K9 [Font.fromEnum]
       20 MOVE                             R8 R5
       21 CALL                             R6 2 2
       22 JUMPIFNOT                        R6 ; [+15]
       23 LOADK                            R8 K10 ["%*|%*|%*"]
       24 GETTABLEKS                       R10 R7 K11 ["Family"]
       26 GETTABLEKS                       R11 R7 K12 ["Weight"]
       28 GETTABLEKS                       R11 R11 K13 ["Value"]
       30 GETTABLEKS                       R12 R7 K14 ["Style"]
       32 GETTABLEKS                       R12 R12 K13 ["Value"]
       34 NAMECALL                         R8 R8 K15 ["format"]
       36 CALL                             R8 4 1
       37 SETTABLE                         R5 R0 R8
       38 FORGLOOP                         R1 2 ; [-27]
       40 SETUPVAL                         R0 0
       41 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETIMPORT                        R2 K4 [Enum.FontWeight.ExtraBold]
        4 GETTABLEKS                       R2 R2 K0 ["Value"]
        6 JUMPIFNOTLE                      R2 R1 ; [+4]
        8 GETIMPORT                        R1 K7 [Enum.Font.BuilderSansExtraBold]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K0 ["Value"]
       13 GETIMPORT                        R2 K9 [Enum.FontWeight.SemiBold]
       15 GETTABLEKS                       R2 R2 K0 ["Value"]
       17 JUMPIFNOTLE                      R2 R1 ; [+4]
       19 GETIMPORT                        R1 K11 [Enum.Font.BuilderSansBold]
       21 RETURN                           R1 1
       22 GETTABLEKS                       R1 R0 K0 ["Value"]
       24 GETIMPORT                        R2 K13 [Enum.FontWeight.Medium]
       26 GETTABLEKS                       R2 R2 K0 ["Value"]
       28 JUMPIFNOTLE                      R2 R1 ; [+4]
       30 GETIMPORT                        R1 K15 [Enum.Font.BuilderSansMedium]
       32 RETURN                           R1 1
       33 GETIMPORT                        R1 K17 [Enum.Font.BuilderSans]
       35 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 CALL                             R2 0 1
       10 LOADK                            R3 K3 ["%*|%*|%*"]
       11 GETTABLEKS                       R5 R0 K4 ["Family"]
       13 GETTABLEKS                       R6 R0 K5 ["Weight"]
       15 GETTABLEKS                       R6 R6 K6 ["Value"]
       17 GETTABLEKS                       R7 R0 K7 ["Style"]
       19 GETTABLEKS                       R7 R7 K6 ["Value"]
       21 NAMECALL                         R3 R3 K8 ["format"]
       23 CALL                             R3 4 1
       24 GETTABLE                         R1 R2 R3
       25 JUMPIF                           R1 ; [+4]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R2 R0 K5 ["Weight"]
       29 CALL                             R1 1 1
       30 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+46]
        2 GETUPVAL                         R4 1
        3 MOVE                             R6 R0
        4 ORK                              R7 R1 K0 [16]
        5 JUMPIFNOT                        R2 ; [+34]
        6 MOVE                             R9 R2
        7 FASTCALL1                        TYPEOF R9 ; [+3]
        8 MOVE                             R11 R9
        9 GETIMPORT                        R10 K2 [typeof]
       11 CALL                             R10 1 1
       12 JUMPIFNOTEQKS                    R10 K3 ["EnumItem"] ; [+3]
       14 MOVE                             R8 R9
       15 JUMP                             ; [+25]
       16 GETUPVAL                         R10 2
       17 CALL                             R10 0 1
       18 LOADK                            R11 K4 ["%*|%*|%*"]
       19 GETTABLEKS                       R13 R9 K5 ["Family"]
       21 GETTABLEKS                       R14 R9 K6 ["Weight"]
       23 GETTABLEKS                       R14 R14 K7 ["Value"]
       25 GETTABLEKS                       R15 R9 K8 ["Style"]
       27 GETTABLEKS                       R15 R15 K7 ["Value"]
       29 NAMECALL                         R11 R11 K9 ["format"]
       31 CALL                             R11 4 1
       32 GETTABLE                         R8 R10 R11
       33 JUMPIF                           R8 ; [+7]
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R11 R9 K6 ["Weight"]
       37 CALL                             R10 1 1
       38 MOVE                             R8 R10
       39 JUMP                             ; [+1]
       40 GETUPVAL                         R8 4
       41 MOVE                             R9 R3
       42 JUMPIF                           R9 ; [+1]
       43 GETUPVAL                         R9 5
       44 NAMECALL                         R4 R4 K10 ["GetTextSize"]
       46 CALL                             R4 5 -1
       47 RETURN                           R4 -1
       48 ORK                              R1 R1 K0 [16]
       49 MOVE                             R4 R2
       50 JUMPIF                           R4 ; [+1]
       51 GETUPVAL                         R4 4
       52 MOVE                             R2 R4
       53 MOVE                             R4 R3
       54 JUMPIF                           R4 ; [+1]
       55 GETUPVAL                         R4 5
       56 MOVE                             R3 R4
       57 GETUPVAL                         R4 1
       58 MOVE                             R6 R0
       59 MOVE                             R7 R1
       60 MOVE                             R8 R2
       61 MOVE                             R9 R3
       62 NAMECALL                         R4 R4 K10 ["GetTextSize"]
       64 CALL                             R4 5 -1
       65 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Parent"]
       17 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K10 ["Utility"]
       22 GETTABLEKS                       R3 R3 K11 ["Flags"]
       24 GETTABLEKS                       R3 R3 K12 ["FoundationStudioFontFaceMigration"]
       26 GETIMPORT                        R4 K16 [Enum.Font.SourceSans]
       28 GETIMPORT                        R5 K19 [Vector2.new]
       30 LOADK                            R6 K20 [Infinity]
       31 LOADK                            R7 K20 [Infinity]
       32 CALL                             R5 2 1
       33 LOADNIL                          R6
       34 DUPCLOSURE                       R7 K21 [PROTO_0]
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          REF R6
       37 DUPCLOSURE                       R9 K22 [PROTO_2]
       38 DUPCLOSURE                       R10 K23 [PROTO_3]
       39 CAPTURE                          VAL R8
       40 CAPTURE                          VAL R9
       41 DUPCLOSURE                       R11 K24 [PROTO_4]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R9
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CLOSEUPVALS                      R6
       49 RETURN                           R11 1
