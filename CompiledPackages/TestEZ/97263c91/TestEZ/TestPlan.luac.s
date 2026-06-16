PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CoreScriptSyncService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R0 R0 K0 ["GetScriptFilePath"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+5]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 ORK                              R1 R2 K0 [False]
        6 SETUPVAL                         R1 0
        7 GETIMPORT                        R1 K2 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 2
       13 JUMPIFNOT                        R1 ; [+2]
       14 MOVE                             R3 R2
       15 JUMPIF                           R3 ; [+1]
       16 LOADNIL                          R3
       17 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 GETUPVAL                         R9 1
        5 NAMECALL                         R4 R4 K0 ["addChild"]
        7 CALL                             R4 5 1
        8 SETTABLEKS                       R1 R4 K1 ["callback"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["NodeType"]
       13 GETTABLEKS                       R5 R5 K3 ["Describe"]
       15 JUMPIFNOTEQ                      R2 R5 ; [+4]
       17 NAMECALL                         R5 R4 K4 ["expand"]
       19 CALL                             R5 1 0
       20 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["NodeType"]
        6 GETTABLEKS                       R5 R5 K1 ["Describe"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["NodeModifier"]
       11 GETTABLEKS                       R6 R6 K3 ["Focus"]
       13 CALL                             R2 4 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["NodeType"]
        6 GETTABLEKS                       R5 R5 K1 ["Describe"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["NodeModifier"]
       11 GETTABLEKS                       R6 R6 K3 ["Skip"]
       13 CALL                             R2 4 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K0 ["NodeType"]
        6 GETTABLEKS                       R6 R6 K1 ["Describe"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K2 ["NodeModifier"]
       11 GETTABLEKS                       R7 R7 K3 ["None"]
       13 CALL                             R3 4 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["NodeType"]
        6 GETTABLEKS                       R5 R5 K1 ["It"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["NodeModifier"]
       11 GETTABLEKS                       R6 R6 K3 ["Focus"]
       13 CALL                             R2 4 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["NodeType"]
        6 GETTABLEKS                       R5 R5 K1 ["It"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["NodeModifier"]
       11 GETTABLEKS                       R6 R6 K3 ["Skip"]
       13 CALL                             R2 4 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["NodeType"]
        6 GETTABLEKS                       R5 R5 K1 ["It"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["NodeModifier"]
       11 GETTABLEKS                       R6 R6 K3 ["Skip"]
       13 CALL                             R2 4 1
       14 GETIMPORT                        R3 K5 [warn]
       16 LOADK                            R4 K6 ["FIXME: broken test"]
       17 NAMECALL                         R5 R2 K7 ["getFullName"]
       19 CALL                             R5 1 -1
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K0 ["NodeType"]
        6 GETTABLEKS                       R6 R6 K1 ["It"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K2 ["NodeModifier"]
       11 GETTABLEKS                       R7 R7 K3 ["None"]
       13 CALL                             R3 4 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["_"]
        3 GETUPVAL                         R6 2
        4 FASTCALL1                        TOSTRING R6 ; [+2]
        5 GETIMPORT                        R5 K2 [tostring]
        7 CALL                             R5 1 1
        8 CONCAT                           R2 R3 R5
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 3
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K3 ["NodeModifier"]
       14 GETTABLEKS                       R5 R5 K4 ["None"]
       16 CALL                             R1 4 0
       17 GETUPVAL                         R2 2
       18 ADDK                             R1 R2 K5 [1]
       19 SETUPVAL                         R1 2
       20 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["FIXME: broken test"]
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R3 R3 K3 ["getFullName"]
        6 CALL                             R3 1 1
        7 ORK                              R4 R0 K4 [""]
        8 CALL                             R1 3 0
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["NodeModifier"]
       13 GETTABLEKS                       R2 R2 K6 ["Skip"]
       15 SETTABLEKS                       R2 R1 K7 ["modifier"]
       17 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["NodeModifier"]
        4 GETTABLEKS                       R1 R1 K1 ["Focus"]
        6 SETTABLEKS                       R1 R0 K2 ["modifier"]
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["NodeModifier"]
        4 GETTABLEKS                       R1 R1 K1 ["Skip"]
        6 SETTABLEKS                       R1 R0 K2 ["modifier"]
        8 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["HACK_NO_XPCALL is deprecated. It is now safe to yield in an xpcall, so this is no longer necessary. It can be safely deleted."]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [error]
        3 LOADK                            R1 K2 ["Cannot call \"expect.extend\" from within a \"describe\" node."]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["new"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_19:
        0 NEWTABLE                         R3 16 0
        2 JUMPIFNOT                        R1 ; [+28]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [type]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K2 ["table"] ; [+14]
       10 GETIMPORT                        R4 K4 [error]
       12 LOADK                            R5 K5 ["Bad argument #2 to newEnvironment. Expected table, got %s"]
       13 FASTCALL1                        TYPEOF R1 ; [+3]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K7 [typeof]
       17 CALL                             R7 1 1
       18 NAMECALL                         R5 R5 K8 ["format"]
       20 CALL                             R5 2 1
       21 LOADN                            R6 2
       22 CALL                             R4 2 0
       23 GETIMPORT                        R4 K10 [pairs]
       25 MOVE                             R5 R1
       26 CALL                             R4 1 3
       27 FORGPREP_NEXT                    R4
       28 SETTABLE                         R8 R3 R7
       29 FORGLOOP                         R4 2 ; [-2]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U0
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R5 R3 K11 ["describeFOCUS"]
       40 NEWCLOSURE                       R5 P2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U0
       43 SETTABLEKS                       R5 R3 K12 ["describeSKIP"]
       45 NEWCLOSURE                       R5 P3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          UPVAL U0
       48 SETTABLEKS                       R5 R3 K13 ["describe"]
       50 NEWCLOSURE                       R5 P4
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U0
       53 SETTABLEKS                       R5 R3 K14 ["itFOCUS"]
       55 NEWCLOSURE                       R5 P5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U0
       58 SETTABLEKS                       R5 R3 K15 ["itSKIP"]
       60 NEWCLOSURE                       R5 P6
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U0
       63 SETTABLEKS                       R5 R3 K16 ["itFIXME"]
       65 NEWCLOSURE                       R5 P7
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U0
       68 SETTABLEKS                       R5 R3 K17 ["it"]
       70 LOADN                            R5 0
       71 NEWTABLE                         R6 4 0
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K18 ["NodeType"]
       76 GETTABLEKS                       R7 R7 K19 ["BeforeAll"]
       78 LOADK                            R8 K20 ["beforeAll"]
       79 SETTABLE                         R8 R6 R7
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K18 ["NodeType"]
       83 GETTABLEKS                       R7 R7 K21 ["AfterAll"]
       85 LOADK                            R8 K22 ["afterAll"]
       86 SETTABLE                         R8 R6 R7
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K18 ["NodeType"]
       90 GETTABLEKS                       R7 R7 K23 ["BeforeEach"]
       92 LOADK                            R8 K24 ["beforeEach"]
       93 SETTABLE                         R8 R6 R7
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K18 ["NodeType"]
       97 GETTABLEKS                       R7 R7 K25 ["AfterEach"]
       99 LOADK                            R8 K26 ["afterEach"]
      100 SETTABLE                         R8 R6 R7
      101 GETIMPORT                        R7 K10 [pairs]
      103 MOVE                             R8 R6
      104 CALL                             R7 1 3
      105 FORGPREP_NEXT                    R7
      106 NEWCLOSURE                       R12 P8
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R11
      109 CAPTURE                          REF R5
      110 CAPTURE                          VAL R10
      111 CAPTURE                          UPVAL U0
      112 SETTABLE                         R12 R3 R11
      113 FORGLOOP                         R7 2 ; [-8]
      115 NEWCLOSURE                       R7 P9
      116 CAPTURE                          VAL R0
      117 CAPTURE                          UPVAL U0
      118 SETTABLEKS                       R7 R3 K27 ["FIXME"]
      120 NEWCLOSURE                       R7 P10
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U0
      123 SETTABLEKS                       R7 R3 K28 ["FOCUS"]
      125 NEWCLOSURE                       R7 P11
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U0
      128 SETTABLEKS                       R7 R3 K29 ["SKIP"]
      130 NEWCLOSURE                       R7 P12
      131 SETTABLEKS                       R7 R3 K30 ["HACK_NO_XPCALL"]
      133 GETTABLEKS                       R7 R3 K14 ["itFOCUS"]
      135 SETTABLEKS                       R7 R3 K31 ["fit"]
      137 GETTABLEKS                       R7 R3 K15 ["itSKIP"]
      139 SETTABLEKS                       R7 R3 K32 ["xit"]
      141 GETTABLEKS                       R7 R3 K11 ["describeFOCUS"]
      143 SETTABLEKS                       R7 R3 K33 ["fdescribe"]
      145 GETTABLEKS                       R7 R3 K12 ["describeSKIP"]
      147 SETTABLEKS                       R7 R3 K34 ["xdescribe"]
      149 DUPTABLE                         R8 K36 [{"extend"}]
      150 NEWCLOSURE                       R9 P13
      151 SETTABLEKS                       R9 R8 K35 ["extend"]
      153 DUPTABLE                         R9 K38 [{"__call"}]
      154 NEWCLOSURE                       R10 P14
      155 CAPTURE                          UPVAL U1
      156 SETTABLEKS                       R10 R9 K37 ["__call"]
      158 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
      160 GETIMPORT                        R7 K40 [setmetatable]
      162 CALL                             R7 2 1
      163 SETTABLEKS                       R7 R3 K41 ["expect"]
      165 CLOSEUPVALS                      R5
      166 RETURN                           R3 1

PROTO_20:
        0 MOVE                             R5 R3
        1 JUMPIF                           R5 ; [+5]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K0 ["NodeModifier"]
        5 GETTABLEKS                       R5 R5 K1 ["None"]
        7 MOVE                             R3 R5
        8 DUPTABLE                         R5 K9 [{"plan", "phrase", "type", "modifier", "children", "callback", "parent"}]
        9 SETTABLEKS                       R0 R5 K2 ["plan"]
       11 SETTABLEKS                       R1 R5 K3 ["phrase"]
       13 SETTABLEKS                       R2 R5 K4 ["type"]
       15 SETTABLEKS                       R3 R5 K5 ["modifier"]
       17 NEWTABLE                         R6 0 0
       19 SETTABLEKS                       R6 R5 K6 ["children"]
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K7 ["callback"]
       24 LOADNIL                          R6
       25 SETTABLEKS                       R6 R5 K8 ["parent"]
       27 GETUPVAL                         R6 1
       28 MOVE                             R7 R5
       29 GETTABLEKS                       R8 R0 K10 ["extraEnvironment"]
       31 MOVE                             R9 R4
       32 CALL                             R6 3 1
       33 SETTABLEKS                       R6 R5 K11 ["environment"]
       35 GETUPVAL                         R8 2
       36 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       38 MOVE                             R7 R5
       39 GETIMPORT                        R6 K13 [setmetatable]
       41 CALL                             R6 2 1
       42 RETURN                           R6 1

PROTO_21:
        0 JUMPIFNOT                        R1 ; [+26]
        1 JUMPIFEQKNIL                     R2 ; [+8]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["NodeModifier"]
        6 GETTABLEKS                       R3 R3 K1 ["None"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+18]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R0 K2 ["match"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["NodeModifier"]
       18 GETTABLEKS                       R3 R3 K3 ["Focus"]
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["NodeModifier"]
       24 GETTABLEKS                       R3 R3 K4 ["Skip"]
       26 RETURN                           R3 1
       27 RETURN                           R2 1

PROTO_22:
        0 JUMPIFNOT                        R1 ; [+20]
        1 JUMPIFEQKNIL                     R2 ; [+8]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["NodeModifier"]
        6 GETTABLEKS                       R3 R3 K1 ["None"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+12]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R0 K2 ["match"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["NodeModifier"]
       18 GETTABLEKS                       R3 R3 K3 ["Skip"]
       20 RETURN                           R3 1
       21 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["NodeType"]
        3 GETTABLEKS                       R5 R5 K1 ["It"]
        5 JUMPIFNOTEQ                      R2 R5 ; [+21]
        7 GETIMPORT                        R5 K3 [pairs]
        9 GETTABLEKS                       R6 R0 K4 ["children"]
       11 CALL                             R5 1 3
       12 FORGPREP_NEXT                    R5
       13 GETTABLEKS                       R10 R9 K5 ["phrase"]
       15 JUMPIFNOTEQ                      R10 R1 ; [+9]
       17 GETIMPORT                        R10 K7 [error]
       19 LOADK                            R12 K8 ["Duplicate it block found: "]
       20 NAMECALL                         R13 R9 K9 ["getFullName"]
       22 CALL                             R13 1 1
       23 CONCAT                           R11 R12 R13
       24 CALL                             R10 1 0
       25 FORGLOOP                         R5 2 ; [-13]
       27 NAMECALL                         R9 R0 K9 ["getFullName"]
       29 CALL                             R9 1 1
       30 MOVE                             R6 R9
       31 LOADK                            R7 K10 [" "]
       32 MOVE                             R8 R1
       33 CONCAT                           R5 R6 R8
       34 NEWTABLE                         R6 0 0
       36 GETTABLEKS                       R7 R0 K11 ["plan"]
       38 GETTABLEKS                       R7 R7 K12 ["testNamePattern"]
       40 JUMPIFNOT                        R7 ; [+10]
       41 GETUPVAL                         R7 1
       42 MOVE                             R8 R5
       43 GETTABLEKS                       R9 R0 K11 ["plan"]
       45 GETTABLEKS                       R9 R9 K12 ["testNamePattern"]
       47 MOVE                             R10 R3
       48 CALL                             R7 3 1
       49 SETTABLEKS                       R7 R6 K13 ["nameNodeModifier"]
       51 GETTABLEKS                       R7 R0 K11 ["plan"]
       53 GETTABLEKS                       R7 R7 K14 ["testPathPattern"]
       55 JUMPIFNOT                        R7 ; [+11]
       56 JUMPIFNOT                        R4 ; [+10]
       57 GETUPVAL                         R7 1
       58 MOVE                             R8 R4
       59 GETTABLEKS                       R9 R0 K11 ["plan"]
       61 GETTABLEKS                       R9 R9 K14 ["testPathPattern"]
       63 MOVE                             R10 R3
       64 CALL                             R7 3 1
       65 SETTABLEKS                       R7 R6 K15 ["pathNodeModifier"]
       67 GETTABLEKS                       R7 R0 K11 ["plan"]
       69 GETTABLEKS                       R7 R7 K16 ["testPathIgnorePatterns"]
       71 JUMPIFNOT                        R7 ; [+11]
       72 JUMPIFNOT                        R4 ; [+10]
       73 GETUPVAL                         R7 2
       74 MOVE                             R8 R4
       75 GETTABLEKS                       R9 R0 K11 ["plan"]
       77 GETTABLEKS                       R9 R9 K16 ["testPathIgnorePatterns"]
       79 MOVE                             R10 R3
       80 CALL                             R7 3 1
       81 SETTABLEKS                       R7 R6 K17 ["pathIgnoreNodeModifier"]
       83 GETIMPORT                        R7 K3 [pairs]
       85 MOVE                             R8 R6
       86 CALL                             R7 1 3
       87 FORGPREP_NEXT                    R7
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R12 R12 K18 ["NodeModifier"]
       91 GETTABLEKS                       R12 R12 K19 ["Focus"]
       93 JUMPIFEQ                         R11 R12 ; [+3]
       95 MOVE                             R3 R11
       96 JUMP                             ; [+3]
       97 MOVE                             R3 R11
       98 FORGLOOP                         R7 2 ; [-11]
      100 GETTABLEKS                       R7 R0 K11 ["plan"]
      102 GETTABLEKS                       R7 R7 K20 ["runTestsByPath"]
      104 JUMPIFNOT                        R7 ; [+23]
      105 GETTABLEKS                       R8 R0 K11 ["plan"]
      107 GETTABLEKS                       R8 R8 K20 ["runTestsByPath"]
      109 LENGTH                           R7 R8
      110 LOADN                            R8 0
      111 JUMPIFNOTLT                      R8 R7 ; [+16]
      113 JUMPIFNOT                        R4 ; [+14]
      114 GETIMPORT                        R7 K23 [table.find]
      116 GETTABLEKS                       R8 R0 K11 ["plan"]
      118 GETTABLEKS                       R8 R8 K20 ["runTestsByPath"]
      120 MOVE                             R9 R4
      121 CALL                             R7 2 1
      122 JUMPIF                           R7 ; [+5]
      123 GETUPVAL                         R7 0
      124 GETTABLEKS                       R7 R7 K18 ["NodeModifier"]
      126 GETTABLEKS                       R3 R7 K24 ["Skip"]
      128 GETUPVAL                         R7 3
      129 GETTABLEKS                       R7 R7 K25 ["new"]
      131 GETTABLEKS                       R8 R0 K11 ["plan"]
      133 MOVE                             R9 R1
      134 MOVE                             R10 R2
      135 MOVE                             R11 R3
      136 MOVE                             R12 R4
      137 CALL                             R7 5 1
      138 SETTABLEKS                       R0 R7 K26 ["parent"]
      140 GETTABLEKS                       R9 R0 K4 ["children"]
      142 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
      144 MOVE                             R10 R7
      145 GETIMPORT                        R8 K28 [table.insert]
      147 CALL                             R8 2 0
      148 RETURN                           R7 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["parent"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R1 R0 K0 ["parent"]
        5 NAMECALL                         R1 R1 K1 ["getFullName"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 [" "]
       11 GETTABLEKS                       R5 R0 K3 ["phrase"]
       13 CONCAT                           R2 R3 R5
       14 RETURN                           R2 1
       15 GETTABLEKS                       R1 R0 K3 ["phrase"]
       17 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [debug.traceback]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K4 [tostring]
        6 CALL                             R2 1 1
        7 LOADN                            R3 2
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_26:
        0 GETIMPORT                        R1 K1 [getfenv]
        2 GETTABLEKS                       R2 R0 K2 ["callback"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R3 1 0
        7 DUPTABLE                         R4 K4 [{"__index"}]
        8 SETTABLEKS                       R1 R4 K3 ["__index"]
       10 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       12 GETIMPORT                        R2 K6 [setmetatable]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K8 [pairs]
       17 GETTABLEKS                       R4 R0 K9 ["environment"]
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 SETTABLE                         R7 R2 R6
       22 FORGLOOP                         R3 2 ; [-2]
       24 GETTABLEKS                       R3 R1 K10 ["script"]
       26 SETTABLEKS                       R3 R2 K10 ["script"]
       28 GETIMPORT                        R3 K12 [setfenv]
       30 GETTABLEKS                       R4 R0 K2 ["callback"]
       32 MOVE                             R5 R2
       33 CALL                             R3 2 0
       34 GETIMPORT                        R3 K14 [xpcall]
       36 GETTABLEKS                       R4 R0 K2 ["callback"]
       38 NEWCLOSURE                       R5 P0
       39 CALL                             R3 2 2
       40 JUMPIF                           R3 ; [+2]
       41 SETTABLEKS                       R4 R0 K15 ["loadError"]
       43 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R1 K1 [{"children"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["children"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETIMPORT                        R2 K3 [pairs]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 SETTABLE                         R6 R1 R5
       12 FORGLOOP                         R2 2 ; [-2]
       14 GETUPVAL                         R4 0
       15 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K5 [setmetatable]
       20 CALL                             R2 2 1
       21 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 GETTABLEKS                       R6 R0 K0 ["testNamePattern"]
        4 MOVE                             R7 R3
        5 CALL                             R4 3 1
        6 MOVE                             R3 R4
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["new"]
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 MOVE                             R8 R3
       14 CALL                             R4 4 1
       15 GETTABLEKS                       R6 R0 K2 ["children"]
       17 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       19 MOVE                             R7 R4
       20 GETIMPORT                        R5 K5 [table.insert]
       22 CALL                             R5 2 0
       23 RETURN                           R4 1

PROTO_29:
        0 MOVE                             R4 R0
        1 LENGTH                           R7 R1
        2 LOADN                            R5 1
        3 LOADN                            R6 255
        4 FORNPREP                         R5
        5 LOADNIL                          R8
        6 GETIMPORT                        R9 K1 [ipairs]
        8 GETTABLEKS                       R10 R4 K2 ["children"]
       10 CALL                             R9 1 3
       11 FORGPREP_INEXT                   R9
       12 GETTABLEKS                       R14 R13 K3 ["phrase"]
       14 GETTABLE                         R15 R1 R7
       15 JUMPIFNOTEQ                      R14 R15 ; [+3]
       17 MOVE                             R8 R13
       18 JUMP                             ; [+2]
       19 FORGLOOP                         R9 2 [inext] ; [-8]
       21 JUMPIFNOTEQKNIL                  R8 ; [+16]
       23 GETUPVAL                         R9 0
       24 MOVE                             R10 R3
       25 CALL                             R9 1 1
       26 GETTABLE                         R12 R1 R7
       27 GETUPVAL                         R13 1
       28 GETTABLEKS                       R13 R13 K4 ["NodeType"]
       30 GETTABLEKS                       R13 R13 K5 ["Describe"]
       32 LOADNIL                          R14
       33 MOVE                             R15 R9
       34 NAMECALL                         R10 R4 K6 ["addChild"]
       36 CALL                             R10 5 1
       37 MOVE                             R8 R10
       38 MOVE                             R4 R8
       39 FORNLOOP                         R5
       40 LOADB                            R5 1
       41 SETTABLEKS                       R5 R4 K7 ["isRoot"]
       43 SETTABLEKS                       R3 R4 K8 ["instance"]
       45 SETTABLEKS                       R2 R4 K9 ["callback"]
       47 NAMECALL                         R5 R4 K10 ["expand"]
       49 CALL                             R5 1 0
       50 RETURN                           R0 0

PROTO_30:
        0 OR                               R2 R2 R0
        1 ORK                              R3 R3 K0 [0]
        2 GETIMPORT                        R4 K2 [ipairs]
        4 GETTABLEKS                       R5 R2 K3 ["children"]
        6 CALL                             R4 1 3
        7 FORGPREP_INEXT                   R4
        8 MOVE                             R9 R1
        9 MOVE                             R10 R8
       10 MOVE                             R11 R3
       11 CALL                             R9 2 0
       12 MOVE                             R11 R1
       13 MOVE                             R12 R8
       14 ADDK                             R13 R3 K4 [1]
       15 NAMECALL                         R9 R0 K5 ["visitAllNodes"]
       17 CALL                             R9 4 0
       18 FORGLOOP                         R4 2 [inext] ; [-11]
       20 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 LOADK                            R7 K0 [" "]
        2 LOADN                            R10 3
        3 MUL                              R9 R10 R1
        4 NAMECALL                         R7 R7 K1 ["rep"]
        6 CALL                             R7 2 1
        7 MOVE                             R5 R7
        8 GETTABLEKS                       R6 R0 K2 ["phrase"]
       10 CONCAT                           R4 R5 R6
       11 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       13 GETIMPORT                        R2 K5 [table.insert]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_32:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R0 K0 ["visitAllNodes"]
        6 CALL                             R2 2 0
        7 GETIMPORT                        R2 K3 [table.concat]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K4 ["\n"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R1 K2 [table.insert]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_34:
        0 NEWTABLE                         R2 0 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 NAMECALL                         R3 R0 K0 ["visitAllNodes"]
        7 CALL                             R3 2 0
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TestEnum"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Expectation"]
       18 CALL                             R1 1 1
       19 NEWCLOSURE                       R2 P0
       20 LOADNIL                          R3
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          REF R3
       23 CAPTURE                          VAL R2
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R6 8 0
       29 SETTABLEKS                       R6 R6 K7 ["__index"]
       31 NEWCLOSURE                       R7 P3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 SETTABLEKS                       R7 R6 K8 ["new"]
       37 NEWCLOSURE                       R7 P4
       38 CAPTURE                          VAL R0
       39 NEWCLOSURE                       R8 P5
       40 CAPTURE                          VAL R0
       41 NEWCLOSURE                       R9 P6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R9 R6 K9 ["addChild"]
       48 NEWCLOSURE                       R9 P7
       49 SETTABLEKS                       R9 R6 K10 ["getFullName"]
       51 NEWCLOSURE                       R9 P8
       52 SETTABLEKS                       R9 R6 K11 ["expand"]
       54 NEWTABLE                         R9 8 0
       56 SETTABLEKS                       R9 R9 K7 ["__index"]
       58 NEWCLOSURE                       R10 P9
       59 CAPTURE                          VAL R9
       60 SETTABLEKS                       R10 R9 K8 ["new"]
       62 NEWCLOSURE                       R10 P10
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R10 R9 K9 ["addChild"]
       67 NEWCLOSURE                       R10 P11
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R10 R9 K12 ["addRoot"]
       72 NEWCLOSURE                       R10 P12
       73 SETTABLEKS                       R10 R9 K13 ["visitAllNodes"]
       75 NEWCLOSURE                       R10 P13
       76 SETTABLEKS                       R10 R9 K14 ["visualize"]
       78 NEWCLOSURE                       R10 P14
       79 SETTABLEKS                       R10 R9 K15 ["findNodes"]
       81 CLOSEUPVALS                      R3
       82 RETURN                           R9 1
