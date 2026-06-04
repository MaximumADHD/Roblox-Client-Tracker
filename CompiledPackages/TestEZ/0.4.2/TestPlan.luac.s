PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 NAMECALL                         R4 R4 K0 ["addChild"]
        6 CALL                             R4 4 1
        7 SETTABLEKS                       R1 R4 K1 ["callback"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["NodeType"]
       12 GETTABLEKS                       R5 R5 K3 ["Describe"]
       14 JUMPIFNOTEQ                      R2 R5 ; [+4]
       16 NAMECALL                         R5 R4 K4 ["expand"]
       18 CALL                             R5 1 0
       19 RETURN                           R4 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["NodeModifier"]
        4 GETTABLEKS                       R1 R1 K1 ["Focus"]
        6 SETTABLEKS                       R1 R0 K2 ["modifier"]
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["NodeModifier"]
        4 GETTABLEKS                       R1 R1 K1 ["Skip"]
        6 SETTABLEKS                       R1 R0 K2 ["modifier"]
        8 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["HACK_NO_XPCALL is deprecated. It is now safe to yield in an xpcall, so this is no longer necessary. It can be safely deleted."]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [error]
        3 LOADK                            R1 K2 ["Cannot call \"expect.extend\" from within a \"describe\" node."]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["new"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_15:
        0 NEWTABLE                         R2 16 0
        2 JUMPIFNOT                        R1 ; [+28]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R3 K1 [type]
        7 CALL                             R3 1 1
        8 JUMPIFEQKS                       R3 K2 ["table"] ; [+14]
       10 GETIMPORT                        R3 K4 [error]
       12 LOADK                            R4 K5 ["Bad argument #2 to newEnvironment. Expected table, got %s"]
       13 FASTCALL1                        TYPEOF R1 ; [+3]
       14 MOVE                             R7 R1
       15 GETIMPORT                        R6 K7 [typeof]
       17 CALL                             R6 1 1
       18 NAMECALL                         R4 R4 K8 ["format"]
       20 CALL                             R4 2 1
       21 LOADN                            R5 2
       22 CALL                             R3 2 0
       23 GETIMPORT                        R3 K10 [pairs]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 3
       27 FORGPREP_NEXT                    R3
       28 SETTABLE                         R7 R2 R6
       29 FORGLOOP                         R3 2 ; [-2]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U0
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R4 R2 K11 ["describeFOCUS"]
       39 NEWCLOSURE                       R4 P2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U0
       42 SETTABLEKS                       R4 R2 K12 ["describeSKIP"]
       44 NEWCLOSURE                       R4 P3
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U0
       47 SETTABLEKS                       R4 R2 K13 ["describe"]
       49 NEWCLOSURE                       R4 P4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U0
       52 SETTABLEKS                       R4 R2 K14 ["itFOCUS"]
       54 NEWCLOSURE                       R4 P5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U0
       57 SETTABLEKS                       R4 R2 K15 ["itSKIP"]
       59 NEWCLOSURE                       R4 P6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U0
       62 SETTABLEKS                       R4 R2 K16 ["itFIXME"]
       64 NEWCLOSURE                       R4 P7
       65 CAPTURE                          VAL R3
       66 CAPTURE                          UPVAL U0
       67 SETTABLEKS                       R4 R2 K17 ["it"]
       69 LOADN                            R4 0
       70 NEWTABLE                         R5 4 0
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K18 ["NodeType"]
       75 GETTABLEKS                       R6 R6 K19 ["BeforeAll"]
       77 LOADK                            R7 K20 ["beforeAll"]
       78 SETTABLE                         R7 R5 R6
       79 GETUPVAL                         R6 0
       80 GETTABLEKS                       R6 R6 K18 ["NodeType"]
       82 GETTABLEKS                       R6 R6 K21 ["AfterAll"]
       84 LOADK                            R7 K22 ["afterAll"]
       85 SETTABLE                         R7 R5 R6
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R6 R6 K18 ["NodeType"]
       89 GETTABLEKS                       R6 R6 K23 ["BeforeEach"]
       91 LOADK                            R7 K24 ["beforeEach"]
       92 SETTABLE                         R7 R5 R6
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R6 R6 K18 ["NodeType"]
       96 GETTABLEKS                       R6 R6 K25 ["AfterEach"]
       98 LOADK                            R7 K26 ["afterEach"]
       99 SETTABLE                         R7 R5 R6
      100 GETIMPORT                        R6 K10 [pairs]
      102 MOVE                             R7 R5
      103 CALL                             R6 1 3
      104 FORGPREP_NEXT                    R6
      105 NEWCLOSURE                       R11 P8
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R10
      108 CAPTURE                          REF R4
      109 CAPTURE                          VAL R9
      110 CAPTURE                          UPVAL U0
      111 SETTABLE                         R11 R2 R10
      112 FORGLOOP                         R6 2 ; [-8]
      114 NEWCLOSURE                       R6 P9
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U0
      117 SETTABLEKS                       R6 R2 K27 ["FIXME"]
      119 NEWCLOSURE                       R6 P10
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U0
      122 SETTABLEKS                       R6 R2 K28 ["FOCUS"]
      124 NEWCLOSURE                       R6 P11
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U0
      127 SETTABLEKS                       R6 R2 K29 ["SKIP"]
      129 NEWCLOSURE                       R6 P12
      130 SETTABLEKS                       R6 R2 K30 ["HACK_NO_XPCALL"]
      132 GETTABLEKS                       R6 R2 K14 ["itFOCUS"]
      134 SETTABLEKS                       R6 R2 K31 ["fit"]
      136 GETTABLEKS                       R6 R2 K15 ["itSKIP"]
      138 SETTABLEKS                       R6 R2 K32 ["xit"]
      140 GETTABLEKS                       R6 R2 K11 ["describeFOCUS"]
      142 SETTABLEKS                       R6 R2 K33 ["fdescribe"]
      144 GETTABLEKS                       R6 R2 K12 ["describeSKIP"]
      146 SETTABLEKS                       R6 R2 K34 ["xdescribe"]
      148 DUPTABLE                         R7 K36 [{"extend"}]
      149 NEWCLOSURE                       R8 P13
      150 SETTABLEKS                       R8 R7 K35 ["extend"]
      152 DUPTABLE                         R8 K38 [{"__call"}]
      153 NEWCLOSURE                       R9 P14
      154 CAPTURE                          UPVAL U1
      155 SETTABLEKS                       R9 R8 K37 ["__call"]
      157 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
      159 GETIMPORT                        R6 K40 [setmetatable]
      161 CALL                             R6 2 1
      162 SETTABLEKS                       R6 R2 K41 ["expect"]
      164 CLOSEUPVALS                      R4
      165 RETURN                           R2 1

PROTO_16:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+5]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["NodeModifier"]
        5 GETTABLEKS                       R4 R4 K1 ["None"]
        7 MOVE                             R3 R4
        8 DUPTABLE                         R4 K9 [{"plan", "phrase", "type", "modifier", "children", "callback", "parent"}]
        9 SETTABLEKS                       R0 R4 K2 ["plan"]
       11 SETTABLEKS                       R1 R4 K3 ["phrase"]
       13 SETTABLEKS                       R2 R4 K4 ["type"]
       15 SETTABLEKS                       R3 R4 K5 ["modifier"]
       17 NEWTABLE                         R5 0 0
       19 SETTABLEKS                       R5 R4 K6 ["children"]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K7 ["callback"]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K8 ["parent"]
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R4
       29 GETTABLEKS                       R7 R0 K10 ["extraEnvironment"]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K11 ["environment"]
       34 GETUPVAL                         R7 2
       35 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       37 MOVE                             R6 R4
       38 GETIMPORT                        R5 K13 [setmetatable]
       40 CALL                             R5 2 1
       41 RETURN                           R5 1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["NodeType"]
        3 GETTABLEKS                       R4 R4 K1 ["It"]
        5 JUMPIFNOTEQ                      R2 R4 ; [+21]
        7 GETIMPORT                        R4 K3 [pairs]
        9 GETTABLEKS                       R5 R0 K4 ["children"]
       11 CALL                             R4 1 3
       12 FORGPREP_NEXT                    R4
       13 GETTABLEKS                       R9 R8 K5 ["phrase"]
       15 JUMPIFNOTEQ                      R9 R1 ; [+9]
       17 GETIMPORT                        R9 K7 [error]
       19 LOADK                            R11 K8 ["Duplicate it block found: "]
       20 NAMECALL                         R12 R8 K9 ["getFullName"]
       22 CALL                             R12 1 1
       23 CONCAT                           R10 R11 R12
       24 CALL                             R9 1 0
       25 FORGLOOP                         R4 2 ; [-13]
       27 NAMECALL                         R8 R0 K9 ["getFullName"]
       29 CALL                             R8 1 1
       30 MOVE                             R5 R8
       31 LOADK                            R6 K10 [" "]
       32 MOVE                             R7 R1
       33 CONCAT                           R4 R5 R7
       34 GETUPVAL                         R5 1
       35 MOVE                             R6 R4
       36 GETTABLEKS                       R7 R0 K11 ["plan"]
       38 GETTABLEKS                       R7 R7 K12 ["testNamePattern"]
       40 MOVE                             R8 R3
       41 CALL                             R5 3 1
       42 MOVE                             R3 R5
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K13 ["new"]
       46 GETTABLEKS                       R6 R0 K11 ["plan"]
       48 MOVE                             R7 R1
       49 MOVE                             R8 R2
       50 MOVE                             R9 R3
       51 CALL                             R5 4 1
       52 SETTABLEKS                       R0 R5 K14 ["parent"]
       54 GETTABLEKS                       R7 R0 K4 ["children"]
       56 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       58 MOVE                             R8 R5
       59 GETIMPORT                        R6 K17 [table.insert]
       61 CALL                             R6 2 0
       62 RETURN                           R5 1

PROTO_19:
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

PROTO_20:
        0 GETIMPORT                        R1 K2 [debug.traceback]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K4 [tostring]
        6 CALL                             R2 1 1
        7 LOADN                            R3 2
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_21:
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

PROTO_22:
        0 DUPTABLE                         R2 K3 [{"children", "testNamePattern", "extraEnvironment"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["children"]
        5 SETTABLEKS                       R0 R2 K1 ["testNamePattern"]
        7 SETTABLEKS                       R1 R2 K2 ["extraEnvironment"]
        9 GETUPVAL                         R5 0
       10 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K5 [setmetatable]
       15 CALL                             R3 2 1
       16 RETURN                           R3 1

PROTO_23:
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

PROTO_24:
        0 MOVE                             R3 R0
        1 LENGTH                           R6 R1
        2 LOADN                            R4 1
        3 LOADN                            R5 255
        4 FORNPREP                         R4
        5 LOADNIL                          R7
        6 GETIMPORT                        R8 K1 [ipairs]
        8 GETTABLEKS                       R9 R3 K2 ["children"]
       10 CALL                             R8 1 3
       11 FORGPREP_INEXT                   R8
       12 GETTABLEKS                       R13 R12 K3 ["phrase"]
       14 GETTABLE                         R14 R1 R6
       15 JUMPIFNOTEQ                      R13 R14 ; [+3]
       17 MOVE                             R7 R12
       18 JUMP                             ; [+2]
       19 FORGLOOP                         R8 2 [inext] ; [-8]
       21 JUMPIFNOTEQKNIL                  R7 ; [+11]
       23 GETTABLE                         R10 R1 R6
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R11 R11 K4 ["NodeType"]
       27 GETTABLEKS                       R11 R11 K5 ["Describe"]
       29 NAMECALL                         R8 R3 K6 ["addChild"]
       31 CALL                             R8 3 1
       32 MOVE                             R7 R8
       33 MOVE                             R3 R7
       34 FORNLOOP                         R4
       35 SETTABLEKS                       R2 R3 K7 ["callback"]
       37 NAMECALL                         R4 R3 K8 ["expand"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R3 8 0
       24 SETTABLEKS                       R3 R3 K7 ["__index"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R3 K8 ["new"]
       32 NEWCLOSURE                       R4 P2
       33 CAPTURE                          VAL R0
       34 NEWCLOSURE                       R5 P3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R3 K9 ["addChild"]
       40 NEWCLOSURE                       R5 P4
       41 SETTABLEKS                       R5 R3 K10 ["getFullName"]
       43 NEWCLOSURE                       R5 P5
       44 SETTABLEKS                       R5 R3 K11 ["expand"]
       46 NEWTABLE                         R5 8 0
       48 SETTABLEKS                       R5 R5 K7 ["__index"]
       50 NEWCLOSURE                       R6 P6
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R6 R5 K8 ["new"]
       54 NEWCLOSURE                       R6 P7
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R6 R5 K9 ["addChild"]
       59 NEWCLOSURE                       R6 P8
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R6 R5 K12 ["addRoot"]
       63 NEWCLOSURE                       R6 P9
       64 SETTABLEKS                       R6 R5 K13 ["visitAllNodes"]
       66 NEWCLOSURE                       R6 P10
       67 SETTABLEKS                       R6 R5 K14 ["visualize"]
       69 NEWCLOSURE                       R6 P11
       70 SETTABLEKS                       R6 R5 K15 ["findNodes"]
       72 RETURN                           R5 1
