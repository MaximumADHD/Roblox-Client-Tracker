PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K2 [Instance.new]
        4 LOADK                            R5 K3 ["StyleRule"]
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R0 R4 K4 ["Name"]
        8 SETTABLEKS                       R0 R4 K5 ["Selector"]
       10 GETTABLEKS                       R5 R1 K6 ["tags"]
       12 JUMPIFNOT                        R5 ; [+44]
       13 GETIMPORT                        R5 K9 [string.gmatch]
       15 GETTABLEKS                       R6 R1 K6 ["tags"]
       17 LOADK                            R7 K10 ["%S+"]
       18 CALL                             R5 2 3
       19 FORGPREP                         R5
       20 GETTABLE                         R10 R2 R8
       21 JUMPIF                           R10 ; [+7]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R10 R10 K11 ["warn"]
       25 LOADK                            R11 K12 ["Missing mixin for tag:"]
       26 MOVE                             R12 R8
       27 CALL                             R10 2 0
       28 JUMP                             ; [+26]
       29 GETTABLE                         R10 R2 R8
       30 LOADNIL                          R11
       31 LOADNIL                          R12
       32 FORGPREP                         R10
       33 JUMPIFEQKS                       R13 K6 ["tags"] ; [+19]
       35 JUMPIFEQKS                       R13 K13 ["priority"] ; [+17]
       37 FASTCALL1                        TYPE R13 ; [+3]
       38 MOVE                             R16 R13
       39 GETIMPORT                        R15 K15 [type]
       41 CALL                             R15 1 1
       42 JUMPIFNOTEQKS                    R15 K16 ["number"] ; [+9]
       44 FASTCALL2                        TABLE_INSERT R1 R14 ; [+5]
       46 MOVE                             R16 R1
       47 MOVE                             R17 R14
       48 GETIMPORT                        R15 K19 [table.insert]
       50 CALL                             R15 2 0
       51 JUMP                             ; [+1]
       52 SETTABLE                         R14 R1 R13
       53 FORGLOOP                         R10 2 ; [-21]
       55 FORGLOOP                         R5 1 ; [-36]
       57 GETTABLEKS                       R5 R1 K13 ["priority"]
       59 JUMPIFNOT                        R5 ; [+4]
       60 GETTABLEKS                       R5 R1 K13 ["priority"]
       62 SETTABLEKS                       R5 R4 K20 ["Priority"]
       64 MOVE                             R5 R1
       65 LOADNIL                          R6
       66 LOADNIL                          R7
       67 FORGPREP                         R5
       68 JUMPIFEQKS                       R8 K6 ["tags"] ; [+25]
       70 JUMPIFEQKS                       R8 K13 ["priority"] ; [+23]
       72 FASTCALL1                        TYPE R8 ; [+3]
       73 MOVE                             R11 R8
       74 GETIMPORT                        R10 K15 [type]
       76 CALL                             R10 1 1
       77 JUMPIFNOTEQKS                    R10 K16 ["number"] ; [+15]
       79 MOVE                             R10 R9
       80 LOADNIL                          R11
       81 LOADNIL                          R12
       82 FORGPREP                         R10
       83 GETUPVAL                         R15 1
       84 MOVE                             R16 R13
       85 MOVE                             R17 R14
       86 MOVE                             R18 R2
       87 CALL                             R15 3 1
       88 SETTABLEKS                       R4 R15 K21 ["Parent"]
       90 FORGLOOP                         R10 2 ; [-8]
       92 JUMP                             ; [+1]
       93 SETTABLE                         R9 R3 R8
       94 FORGLOOP                         R5 2 ; [-27]
       96 GETIMPORT                        R5 K23 [pcall]
       98 GETTABLEKS                       R6 R4 K24 ["SetProperties"]
      100 MOVE                             R7 R4
      101 MOVE                             R8 R3
      102 CALL                             R5 3 2
      103 JUMPIF                           R5 ; [+8]
      104 GETUPVAL                         R7 0
      105 GETTABLEKS                       R7 R7 K11 ["warn"]
      107 LOADK                            R8 K25 ["Failed to set StyleRule properties"]
      108 MOVE                             R9 R4
      109 MOVE                             R10 R3
      110 MOVE                             R11 R6
      111 CALL                             R7 4 0
      112 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["params"]
        2 GETTABLEKS                       R2 R2 K1 ["tokens"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R9 R5
        8 MOVE                             R10 R6
        9 NAMECALL                         R7 R0 K2 ["SetAttribute"]
       11 CALL                             R7 3 0
       12 FORGLOOP                         R2 2 ; [-6]
       14 NEWTABLE                         R2 0 0
       16 GETTABLEKS                       R3 R1 K0 ["params"]
       18 GETTABLEKS                       R3 R3 K3 ["rules"]
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 LOADN                            R10 1
       24 LOADN                            R11 1
       25 NAMECALL                         R8 R6 K4 ["sub"]
       27 CALL                             R8 3 1
       28 JUMPIFNOTEQKS                    R8 K5 ["."] ; [+6]
       30 LOADN                            R10 2
       31 NAMECALL                         R8 R6 K4 ["sub"]
       33 CALL                             R8 2 1
       34 SETTABLE                         R7 R2 R8
       35 FORGLOOP                         R3 2 ; [-13]
       37 GETTABLEKS                       R3 R1 K0 ["params"]
       39 GETTABLEKS                       R3 R3 K3 ["rules"]
       41 LOADNIL                          R4
       42 LOADNIL                          R5
       43 FORGPREP                         R3
       44 GETUPVAL                         R8 0
       45 MOVE                             R9 R6
       46 MOVE                             R10 R7
       47 MOVE                             R11 R2
       48 CALL                             R8 3 1
       49 SETTABLEKS                       R0 R8 K6 ["Parent"]
       51 FORGLOOP                         R3 2 ; [-8]
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Debug"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K7 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 DUPCLOSURE                       R4 K8 [PROTO_1]
       21 CAPTURE                          VAL R3
       22 RETURN                           R4 1
