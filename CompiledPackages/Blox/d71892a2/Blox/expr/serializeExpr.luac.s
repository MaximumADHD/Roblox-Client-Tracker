PROTO_0:
        0 LOADK                            R3 K0 ["\\"]
        1 LOADK                            R4 K1 ["\\\\"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 MOVE                             R0 R1
        6 LOADK                            R3 K3 ["\n"]
        7 LOADK                            R4 K4 ["\\n"]
        8 NAMECALL                         R1 R0 K2 ["gsub"]
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 LOADK                            R3 K5 ["\t"]
       13 LOADK                            R4 K6 ["\\t"]
       14 NAMECALL                         R1 R0 K2 ["gsub"]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 LOADK                            R5 K1 ["\\"]
        3 LOADK                            R6 K2 ["\\\\"]
        4 NAMECALL                         R3 R2 K3 ["gsub"]
        6 CALL                             R3 3 1
        7 MOVE                             R2 R3
        8 LOADK                            R5 K4 ["\n"]
        9 LOADK                            R6 K5 ["\\n"]
       10 NAMECALL                         R3 R2 K3 ["gsub"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 LOADK                            R5 K6 ["\t"]
       15 LOADK                            R6 K7 ["\\t"]
       16 NAMECALL                         R3 R2 K3 ["gsub"]
       18 CALL                             R3 3 1
       19 MOVE                             R2 R3
       20 MOVE                             R1 R2
       21 GETTABLEKS                       R2 R0 K8 ["openQuote"]
       23 JUMPIFNOTEQKS                    R2 K9 ["\""] ; [+8]
       25 LOADK                            R4 K9 ["\""]
       26 LOADK                            R5 K10 ["\\\""]
       27 NAMECALL                         R2 R1 K3 ["gsub"]
       29 CALL                             R2 3 1
       30 MOVE                             R1 R2
       31 JUMP                             ; [+10]
       32 GETTABLEKS                       R2 R0 K8 ["openQuote"]
       34 JUMPIFNOTEQKS                    R2 K11 ["'"] ; [+7]
       36 LOADK                            R4 K11 ["'"]
       37 LOADK                            R5 K12 ["\\'"]
       38 NAMECALL                         R2 R1 K3 ["gsub"]
       40 CALL                             R2 3 1
       41 MOVE                             R1 R2
       42 LOADK                            R3 K13 ["%*%*%*"]
       43 GETTABLEKS                       R5 R0 K8 ["openQuote"]
       45 MOVE                             R6 R1
       46 GETTABLEKS                       R7 R0 K14 ["closeQuote"]
       48 NAMECALL                         R3 R3 K15 ["format"]
       50 CALL                             R3 4 1
       51 MOVE                             R2 R3
       52 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R1 K0 ["nil"]
        1 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["operator"]
        2 JUMPIFEQKS                       R2 K1 ["not"] ; [+5]
        4 GETTABLEKS                       R2 R0 K0 ["operator"]
        6 JUMPIFNOTEQKS                    R2 K2 ["return"] ; [+3]
        8 LOADK                            R1 K3 [" "]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K4 [""]
       11 GETTABLEKS                       R3 R0 K0 ["operator"]
       13 MOVE                             R4 R1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R6 R0 K5 ["operand"]
       17 CALL                             R5 1 1
       18 CONCAT                           R2 R3 R5
       19 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["parts"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["type"]
        9 JUMPIFNOTEQKS                    R7 K2 ["TemplateStringPart"] ; [+36]
       11 GETTABLEKS                       R8 R6 K3 ["value"]
       13 LOADK                            R11 K4 ["\\"]
       14 LOADK                            R12 K5 ["\\\\"]
       15 NAMECALL                         R9 R8 K6 ["gsub"]
       17 CALL                             R9 3 1
       18 MOVE                             R8 R9
       19 LOADK                            R11 K7 ["\n"]
       20 LOADK                            R12 K8 ["\\n"]
       21 NAMECALL                         R9 R8 K6 ["gsub"]
       23 CALL                             R9 3 1
       24 MOVE                             R8 R9
       25 LOADK                            R11 K9 ["\t"]
       26 LOADK                            R12 K10 ["\\t"]
       27 NAMECALL                         R9 R8 K6 ["gsub"]
       29 CALL                             R9 3 1
       30 MOVE                             R8 R9
       31 MOVE                             R7 R8
       32 LOADK                            R10 K11 ["`"]
       33 LOADK                            R11 K12 ["\\`"]
       34 NAMECALL                         R8 R7 K6 ["gsub"]
       36 CALL                             R8 3 1
       37 MOVE                             R7 R8
       38 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       40 MOVE                             R9 R1
       41 MOVE                             R10 R7
       42 GETIMPORT                        R8 K15 [table.insert]
       44 CALL                             R8 2 0
       45 JUMP                             ; [+13]
       46 LOADK                            R10 K16 ["{"]
       47 GETUPVAL                         R13 0
       48 MOVE                             R14 R6
       49 CALL                             R13 1 1
       50 MOVE                             R11 R13
       51 LOADK                            R12 K17 ["}"]
       52 CONCAT                           R9 R10 R12
       53 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       55 MOVE                             R8 R1
       56 GETIMPORT                        R7 K15 [table.insert]
       58 CALL                             R7 2 0
       59 FORGLOOP                         R2 2 ; [-53]
       61 LOADK                            R3 K11 ["`"]
       62 GETIMPORT                        R6 K19 [table.concat]
       64 MOVE                             R7 R1
       65 LOADK                            R8 K20 [""]
       66 CALL                             R6 2 1
       67 MOVE                             R4 R6
       68 LOADK                            R5 K11 ["`"]
       69 CONCAT                           R2 R3 R5
       70 RETURN                           R2 1

PROTO_8:
        0 LOADK                            R2 K0 ["if %* then %* else %*"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R5 R0 K1 ["condition"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R6 R0 K2 ["trueExpr"]
        8 CALL                             R5 1 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R7 R0 K3 ["falseExpr"]
       12 CALL                             R6 1 1
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 4 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R2 K0 ["("]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R6 R0 K1 ["body"]
        4 CALL                             R5 1 1
        5 MOVE                             R3 R5
        6 LOADK                            R4 K2 [")"]
        7 CONCAT                           R1 R2 R4
        8 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["properties"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["type"]
        9 JUMPIFNOTEQKS                    R7 K2 ["TableEntry"] ; [+38]
       11 GETTABLEKS                       R9 R6 K3 ["key"]
       13 FASTCALL1                        TYPEOF R9 ; [+2]
       14 GETIMPORT                        R8 K5 [typeof]
       16 CALL                             R8 1 1
       17 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+4]
       19 GETTABLEKS                       R7 R6 K3 ["key"]
       21 JUMP                             ; [+9]
       22 LOADK                            R8 K7 ["[%*]"]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R11 R6 K3 ["key"]
       26 CALL                             R10 1 1
       27 NAMECALL                         R8 R8 K8 ["format"]
       29 CALL                             R8 2 1
       30 MOVE                             R7 R8
       31 LOADK                            R11 K9 ["%* = %*"]
       32 MOVE                             R13 R7
       33 GETUPVAL                         R14 0
       34 GETTABLEKS                       R15 R6 K10 ["value"]
       36 CALL                             R14 1 1
       37 NAMECALL                         R11 R11 K8 ["format"]
       39 CALL                             R11 3 1
       40 MOVE                             R10 R11
       41 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       43 MOVE                             R9 R1
       44 GETIMPORT                        R8 K13 [table.insert]
       46 CALL                             R8 2 0
       47 JUMP                             ; [+9]
       48 MOVE                             R8 R1
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R10 R6 K10 ["value"]
       52 CALL                             R9 1 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R7 K13 [table.insert]
       56 CALL                             R7 -1 0
       57 FORGLOOP                         R2 2 ; [-51]
       59 LOADK                            R3 K14 ["{ "]
       60 GETIMPORT                        R6 K16 [table.concat]
       62 MOVE                             R7 R1
       63 LOADK                            R8 K17 [", "]
       64 CALL                             R6 2 1
       65 MOVE                             R4 R6
       66 LOADK                            R5 K18 [" }"]
       67 CONCAT                           R2 R3 R5
       68 RETURN                           R2 1

PROTO_11:
        0 LOADK                            R2 K0 ["%*%*%*"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R5 R0 K1 ["object"]
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R5 R0 K2 ["accessor"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R7 R0 K3 ["member"]
       10 CALL                             R6 1 1
       11 NAMECALL                         R2 R2 K4 ["format"]
       13 CALL                             R2 4 1
       14 MOVE                             R1 R2
       15 RETURN                           R1 1

PROTO_12:
        0 LOADK                            R2 K0 ["%*[%*]"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R5 R0 K1 ["object"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R6 R0 K2 ["index"]
        8 CALL                             R5 1 1
        9 NAMECALL                         R2 R2 K3 ["format"]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["operator"]
        2 JUMPIFNOTEQKS                    R2 K1 [","] ; [+3]
        4 LOADK                            R1 K2 [""]
        5 JUMP                             ; [+1]
        6 LOADK                            R1 K3 [" "]
        7 LOADK                            R3 K4 ["%*%*%* %*"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R6 R0 K5 ["left"]
       11 CALL                             R5 1 1
       12 MOVE                             R6 R1
       13 GETTABLEKS                       R7 R0 K0 ["operator"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R9 R0 K6 ["right"]
       18 CALL                             R8 1 1
       19 NAMECALL                         R3 R3 K7 ["format"]
       21 CALL                             R3 5 1
       22 MOVE                             R2 R3
       23 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["params"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["type"]
        9 JUMPIFNOTEQKS                    R7 K2 ["VarArgs"] ; [+9]
       11 FASTCALL2K                       TABLE_INSERT R1 K3 ; [+5]
       13 MOVE                             R8 R1
       14 LOADK                            R9 K3 ["..."]
       15 GETIMPORT                        R7 K6 [table.insert]
       17 CALL                             R7 2 0
       18 JUMP                             ; [+32]
       19 GETTABLEKS                       R8 R6 K7 ["typeDef"]
       21 JUMPIFNOT                        R8 ; [+12]
       22 LOADK                            R8 K8 [": %*"]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R11 R6 K7 ["typeDef"]
       26 GETTABLEKS                       R11 R11 K9 ["name"]
       28 CALL                             R10 1 1
       29 NAMECALL                         R8 R8 K10 ["format"]
       31 CALL                             R8 2 1
       32 MOVE                             R7 R8
       33 JUMP                             ; [+1]
       34 LOADK                            R7 K11 [""]
       35 LOADK                            R11 K12 ["%*%*"]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R14 R6 K9 ["name"]
       39 CALL                             R13 1 1
       40 MOVE                             R14 R7
       41 NAMECALL                         R11 R11 K10 ["format"]
       43 CALL                             R11 3 1
       44 MOVE                             R10 R11
       45 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       47 MOVE                             R9 R1
       48 GETIMPORT                        R8 K6 [table.insert]
       50 CALL                             R8 2 0
       51 FORGLOOP                         R2 2 ; [-45]
       53 GETTABLEKS                       R3 R0 K13 ["verbose"]
       55 JUMPIFNOT                        R3 ; [+2]
       56 LOADK                            R2 K14 ["function"]
       57 JUMP                             ; [+1]
       58 LOADK                            R2 K15 ["fn"]
       59 GETTABLEKS                       R4 R0 K16 ["body"]
       61 JUMPIFNOT                        R4 ; [+10]
       62 LOADK                            R4 K17 [" %*"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R7 R0 K16 ["body"]
       66 CALL                             R6 1 1
       67 NAMECALL                         R4 R4 K10 ["format"]
       69 CALL                             R4 2 1
       70 MOVE                             R3 R4
       71 JUMP                             ; [+1]
       72 LOADK                            R3 K11 [""]
       73 GETTABLEKS                       R4 R0 K13 ["verbose"]
       75 JUMPIFNOT                        R4 ; [+28]
       76 GETTABLEKS                       R4 R0 K16 ["body"]
       78 JUMPIFNOT                        R4 ; [+13]
       79 LOADK                            R5 K18 ["%*(%*)\n\t%*\nend"]
       80 MOVE                             R7 R2
       81 GETIMPORT                        R8 K20 [table.concat]
       83 MOVE                             R9 R1
       84 LOADK                            R10 K21 [", "]
       85 CALL                             R8 2 1
       86 MOVE                             R9 R3
       87 NAMECALL                         R5 R5 K10 ["format"]
       89 CALL                             R5 4 1
       90 MOVE                             R4 R5
       91 RETURN                           R4 1
       92 LOADK                            R5 K22 ["%*(%*) end"]
       93 MOVE                             R7 R2
       94 GETIMPORT                        R8 K20 [table.concat]
       96 MOVE                             R9 R1
       97 LOADK                            R10 K21 [", "]
       98 CALL                             R8 2 1
       99 NAMECALL                         R5 R5 K10 ["format"]
      101 CALL                             R5 3 1
      102 MOVE                             R4 R5
      103 RETURN                           R4 1
      104 LOADK                            R5 K23 ["%*(%*)%*"]
      105 MOVE                             R7 R2
      106 GETIMPORT                        R8 K20 [table.concat]
      108 MOVE                             R9 R1
      109 LOADK                            R10 K21 [", "]
      110 CALL                             R8 2 1
      111 MOVE                             R9 R3
      112 NAMECALL                         R5 R5 K10 ["format"]
      114 CALL                             R5 4 1
      115 MOVE                             R4 R5
      116 RETURN                           R4 1

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["args"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R8 R1
        8 GETUPVAL                         R9 0
        9 MOVE                             R10 R6
       10 CALL                             R9 1 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R7 K3 [table.insert]
       14 CALL                             R7 -1 0
       15 FORGLOOP                         R2 2 ; [-9]
       17 LOADK                            R3 K4 ["%*(%*)"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R6 R0 K5 ["callee"]
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K7 [table.concat]
       24 MOVE                             R7 R1
       25 LOADK                            R8 K8 [", "]
       26 CALL                             R6 2 1
       27 NAMECALL                         R3 R3 K9 ["format"]
       29 CALL                             R3 3 1
       30 MOVE                             R2 R3
       31 RETURN                           R2 1

PROTO_16:
        0 LOADK                            R1 K0 ["..."]
        1 RETURN                           R1 1

PROTO_17:
        0 JUMPIF                           R0 ; [+12]
        1 GETIMPORT                        R1 K1 [warn]
        3 LOADK                            R2 K2 ["Missing ast type"]
        4 CALL                             R1 1 0
        5 GETIMPORT                        R1 K4 [print]
        7 GETIMPORT                        R2 K7 [debug.traceback]
        9 CALL                             R2 0 -1
       10 CALL                             R1 -1 0
       11 LOADK                            R1 K8 ["<error>"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R3 R0 K9 ["type"]
       16 GETTABLE                         R1 R2 R3
       17 JUMPIFNOT                        R1 ; [+4]
       18 MOVE                             R2 R1
       19 MOVE                             R3 R0
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1
       22 GETIMPORT                        R2 K4 [print]
       24 LOADK                            R3 K10 ["AST"]
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R0
       27 CALL                             R4 1 -1
       28 CALL                             R2 -1 0
       29 GETIMPORT                        R2 K12 [error]
       31 LOADK                            R4 K13 ["Unknown AST node type: "]
       32 GETTABLEKS                       R6 R0 K9 ["type"]
       34 FASTCALL1                        TOSTRING R6 ; [+2]
       35 GETIMPORT                        R5 K15 [tostring]
       37 CALL                             R5 1 1
       38 CONCAT                           R3 R4 R5
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["pretty"]
       13 CALL                             R1 1 1
       14 LOADNIL                          R2
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 DUPTABLE                         R4 K24 [{"NumberLiteral", "StringLiteral", "BooleanLiteral", "NilLiteral", "Id", "UnaryExpr", "TemplateString", "TernaryExpr", "ParenExpr", "TableLiteral", "MemberAccess", "IndexAccess", "BinaryExpr", "Fn", "Call", "VarArgs"}]
       17 DUPCLOSURE                       R5 K25 [PROTO_1]
       18 SETTABLEKS                       R5 R4 K8 ["NumberLiteral"]
       20 DUPCLOSURE                       R5 K26 [PROTO_2]
       21 SETTABLEKS                       R5 R4 K9 ["StringLiteral"]
       23 DUPCLOSURE                       R5 K27 [PROTO_3]
       24 SETTABLEKS                       R5 R4 K10 ["BooleanLiteral"]
       26 DUPCLOSURE                       R5 K28 [PROTO_4]
       27 SETTABLEKS                       R5 R4 K11 ["NilLiteral"]
       29 DUPCLOSURE                       R5 K29 [PROTO_5]
       30 SETTABLEKS                       R5 R4 K12 ["Id"]
       32 NEWCLOSURE                       R5 P6
       33 CAPTURE                          REF R2
       34 SETTABLEKS                       R5 R4 K13 ["UnaryExpr"]
       36 NEWCLOSURE                       R5 P7
       37 CAPTURE                          REF R2
       38 SETTABLEKS                       R5 R4 K14 ["TemplateString"]
       40 NEWCLOSURE                       R5 P8
       41 CAPTURE                          REF R2
       42 SETTABLEKS                       R5 R4 K15 ["TernaryExpr"]
       44 NEWCLOSURE                       R5 P9
       45 CAPTURE                          REF R2
       46 SETTABLEKS                       R5 R4 K16 ["ParenExpr"]
       48 NEWCLOSURE                       R5 P10
       49 CAPTURE                          REF R2
       50 SETTABLEKS                       R5 R4 K17 ["TableLiteral"]
       52 NEWCLOSURE                       R5 P11
       53 CAPTURE                          REF R2
       54 SETTABLEKS                       R5 R4 K18 ["MemberAccess"]
       56 NEWCLOSURE                       R5 P12
       57 CAPTURE                          REF R2
       58 SETTABLEKS                       R5 R4 K19 ["IndexAccess"]
       60 NEWCLOSURE                       R5 P13
       61 CAPTURE                          REF R2
       62 SETTABLEKS                       R5 R4 K20 ["BinaryExpr"]
       64 NEWCLOSURE                       R5 P14
       65 CAPTURE                          REF R2
       66 SETTABLEKS                       R5 R4 K21 ["Fn"]
       68 NEWCLOSURE                       R5 P15
       69 CAPTURE                          REF R2
       70 SETTABLEKS                       R5 R4 K22 ["Call"]
       72 DUPCLOSURE                       R5 K30 [PROTO_16]
       73 SETTABLEKS                       R5 R4 K23 ["VarArgs"]
       75 DUPCLOSURE                       R2 K31 [PROTO_17]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R1
       78 CLOSEUPVALS                      R2
       79 RETURN                           R2 1
