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
       42 LOADK                            R2 K13 ["%*%*%*"]
       43 GETTABLEKS                       R4 R0 K8 ["openQuote"]
       45 MOVE                             R5 R1
       46 GETTABLEKS                       R6 R0 K14 ["closeQuote"]
       48 NAMECALL                         R2 R2 K15 ["format"]
       50 CALL                             R2 4 1
       51 RETURN                           R2 1

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
        0 LOADK                            R1 K0 ["if %* then %* else %*"]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R0 K1 ["condition"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R0 K2 ["trueExpr"]
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R6 R0 K3 ["falseExpr"]
       12 CALL                             R5 1 1
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 4 1
       16 RETURN                           R1 1

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
        9 JUMPIFNOTEQKS                    R7 K2 ["TableEntry"] ; [+36]
       11 GETTABLEKS                       R9 R6 K3 ["key"]
       13 FASTCALL1                        TYPEOF R9 ; [+2]
       14 GETIMPORT                        R8 K5 [typeof]
       16 CALL                             R8 1 1
       17 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+4]
       19 GETTABLEKS                       R7 R6 K3 ["key"]
       21 JUMP                             ; [+8]
       22 LOADK                            R7 K7 ["[%*]"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R10 R6 K3 ["key"]
       26 CALL                             R9 1 1
       27 NAMECALL                         R7 R7 K8 ["format"]
       29 CALL                             R7 2 1
       30 LOADK                            R10 K9 ["%* = %*"]
       31 MOVE                             R12 R7
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R14 R6 K10 ["value"]
       35 CALL                             R13 1 1
       36 NAMECALL                         R10 R10 K8 ["format"]
       38 CALL                             R10 3 1
       39 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       41 MOVE                             R9 R1
       42 GETIMPORT                        R8 K13 [table.insert]
       44 CALL                             R8 2 0
       45 JUMP                             ; [+9]
       46 MOVE                             R8 R1
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R10 R6 K10 ["value"]
       50 CALL                             R9 1 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R7 K13 [table.insert]
       54 CALL                             R7 -1 0
       55 FORGLOOP                         R2 2 ; [-49]
       57 LOADK                            R3 K14 ["{ "]
       58 GETIMPORT                        R6 K16 [table.concat]
       60 MOVE                             R7 R1
       61 LOADK                            R8 K17 [", "]
       62 CALL                             R6 2 1
       63 MOVE                             R4 R6
       64 LOADK                            R5 K18 [" }"]
       65 CONCAT                           R2 R3 R5
       66 RETURN                           R2 1

PROTO_11:
        0 LOADK                            R1 K0 ["%*%*%*"]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R0 K1 ["object"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K2 ["accessor"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R6 R0 K3 ["member"]
       10 CALL                             R5 1 1
       11 NAMECALL                         R1 R1 K4 ["format"]
       13 CALL                             R1 4 1
       14 RETURN                           R1 1

PROTO_12:
        0 LOADK                            R1 K0 ["%*[%*]"]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R0 K1 ["object"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R0 K2 ["index"]
        8 CALL                             R4 1 1
        9 NAMECALL                         R1 R1 K3 ["format"]
       11 CALL                             R1 3 1
       12 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["operator"]
        2 JUMPIFNOTEQKS                    R2 K1 [","] ; [+3]
        4 LOADK                            R1 K2 [""]
        5 JUMP                             ; [+1]
        6 LOADK                            R1 K3 [" "]
        7 LOADK                            R2 K4 ["%*%*%* %*"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R5 R0 K5 ["left"]
       11 CALL                             R4 1 1
       12 MOVE                             R5 R1
       13 GETTABLEKS                       R6 R0 K0 ["operator"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R8 R0 K6 ["right"]
       18 CALL                             R7 1 1
       19 NAMECALL                         R2 R2 K7 ["format"]
       21 CALL                             R2 5 1
       22 RETURN                           R2 1

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
       18 JUMP                             ; [+30]
       19 GETTABLEKS                       R8 R6 K7 ["typeDef"]
       21 JUMPIFNOT                        R8 ; [+11]
       22 LOADK                            R7 K8 [": %*"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R10 R6 K7 ["typeDef"]
       26 GETTABLEKS                       R10 R10 K9 ["name"]
       28 CALL                             R9 1 1
       29 NAMECALL                         R7 R7 K10 ["format"]
       31 CALL                             R7 2 1
       32 JUMP                             ; [+1]
       33 LOADK                            R7 K11 [""]
       34 LOADK                            R10 K12 ["%*%*"]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R13 R6 K9 ["name"]
       38 CALL                             R12 1 1
       39 MOVE                             R13 R7
       40 NAMECALL                         R10 R10 K10 ["format"]
       42 CALL                             R10 3 1
       43 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       45 MOVE                             R9 R1
       46 GETIMPORT                        R8 K6 [table.insert]
       48 CALL                             R8 2 0
       49 FORGLOOP                         R2 2 ; [-43]
       51 GETTABLEKS                       R3 R0 K13 ["verbose"]
       53 JUMPIFNOT                        R3 ; [+2]
       54 LOADK                            R2 K14 ["function"]
       55 JUMP                             ; [+1]
       56 LOADK                            R2 K15 ["fn"]
       57 GETTABLEKS                       R4 R0 K16 ["body"]
       59 JUMPIFNOT                        R4 ; [+9]
       60 LOADK                            R3 K17 [" %*"]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R6 R0 K16 ["body"]
       64 CALL                             R5 1 1
       65 NAMECALL                         R3 R3 K10 ["format"]
       67 CALL                             R3 2 1
       68 JUMP                             ; [+1]
       69 LOADK                            R3 K11 [""]
       70 GETTABLEKS                       R4 R0 K13 ["verbose"]
       72 JUMPIFNOT                        R4 ; [+26]
       73 GETTABLEKS                       R4 R0 K16 ["body"]
       75 JUMPIFNOT                        R4 ; [+12]
       76 LOADK                            R4 K18 ["%*(%*)\n\t%*\nend"]
       77 MOVE                             R6 R2
       78 GETIMPORT                        R7 K20 [table.concat]
       80 MOVE                             R8 R1
       81 LOADK                            R9 K21 [", "]
       82 CALL                             R7 2 1
       83 MOVE                             R8 R3
       84 NAMECALL                         R4 R4 K10 ["format"]
       86 CALL                             R4 4 1
       87 RETURN                           R4 1
       88 LOADK                            R4 K22 ["%*(%*) end"]
       89 MOVE                             R6 R2
       90 GETIMPORT                        R7 K20 [table.concat]
       92 MOVE                             R8 R1
       93 LOADK                            R9 K21 [", "]
       94 CALL                             R7 2 1
       95 NAMECALL                         R4 R4 K10 ["format"]
       97 CALL                             R4 3 1
       98 RETURN                           R4 1
       99 LOADK                            R4 K23 ["%*(%*)%*"]
      100 MOVE                             R6 R2
      101 GETIMPORT                        R7 K20 [table.concat]
      103 MOVE                             R8 R1
      104 LOADK                            R9 K21 [", "]
      105 CALL                             R7 2 1
      106 MOVE                             R8 R3
      107 NAMECALL                         R4 R4 K10 ["format"]
      109 CALL                             R4 4 1
      110 RETURN                           R4 1

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
       17 LOADK                            R2 K4 ["%*(%*)"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R5 R0 K5 ["callee"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K7 [table.concat]
       24 MOVE                             R6 R1
       25 LOADK                            R7 K8 [", "]
       26 CALL                             R5 2 1
       27 NAMECALL                         R2 R2 K9 ["format"]
       29 CALL                             R2 3 1
       30 RETURN                           R2 1

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
