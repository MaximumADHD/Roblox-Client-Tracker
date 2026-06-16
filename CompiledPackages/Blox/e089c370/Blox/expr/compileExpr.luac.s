PROTO_0:
        0 LOADK                            R3 K0 ["\""]
        1 LOADK                            R4 K1 ["\\\""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["useWrap"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 LOADB                            R6 1
        6 CALL                             R3 3 1
        7 GETTABLEKS                       R4 R1 K0 ["useWrap"]
        9 JUMPIFNOT                        R4 ; [+132]
       10 DUPTABLE                         R4 K4 [{"type", "operator", "operand"}]
       11 LOADK                            R5 K5 ["UnaryExpr"]
       12 SETTABLEKS                       R5 R4 K1 ["type"]
       14 LOADK                            R5 K6 ["return"]
       15 SETTABLEKS                       R5 R4 K2 ["operator"]
       17 SETTABLEKS                       R3 R4 K3 ["operand"]
       19 MOVE                             R3 R4
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K7 ["VERBOSE_EXPRESSIONS"]
       23 JUMPIFNOT                        R4 ; [+70]
       24 DUPTABLE                         R4 K10 [{"type", "operator", "left", "right"}]
       25 LOADK                            R5 K11 ["BinaryExpr"]
       26 SETTABLEKS                       R5 R4 K1 ["type"]
       28 LOADK                            R5 K12 [";"]
       29 SETTABLEKS                       R5 R4 K2 ["operator"]
       31 DUPTABLE                         R5 K15 [{"type", "callee", "args"}]
       32 LOADK                            R6 K16 ["Call"]
       33 SETTABLEKS                       R6 R5 K1 ["type"]
       35 DUPTABLE                         R6 K18 [{"type", "name"}]
       36 LOADK                            R7 K19 ["Id"]
       37 SETTABLEKS                       R7 R6 K1 ["type"]
       39 LOADK                            R7 K20 ["api.log"]
       40 SETTABLEKS                       R7 R6 K17 ["name"]
       42 SETTABLEKS                       R6 R5 K13 ["callee"]
       44 NEWTABLE                         R6 0 2
       46 DUPTABLE                         R7 K24 [{"type", "value", "openQuote", "closeQuote"}]
       47 LOADK                            R8 K25 ["StringLiteral"]
       48 SETTABLEKS                       R8 R7 K1 ["type"]
       50 LOADK                            R8 K26 ["Expressions"]
       51 SETTABLEKS                       R8 R7 K21 ["value"]
       53 LOADK                            R8 K27 ["\""]
       54 SETTABLEKS                       R8 R7 K22 ["openQuote"]
       56 LOADK                            R8 K27 ["\""]
       57 SETTABLEKS                       R8 R7 K23 ["closeQuote"]
       59 DUPTABLE                         R8 K24 [{"type", "value", "openQuote", "closeQuote"}]
       60 LOADK                            R9 K25 ["StringLiteral"]
       61 SETTABLEKS                       R9 R8 K1 ["type"]
       63 LOADK                            R10 K28 ["Recompute: %*"]
       64 GETUPVAL                         R13 2
       65 MOVE                             R14 R3
       66 CALL                             R13 1 1
       67 LOADK                            R16 K27 ["\""]
       68 LOADK                            R17 K29 ["\\\""]
       69 NAMECALL                         R14 R13 K30 ["gsub"]
       71 CALL                             R14 3 1
       72 MOVE                             R12 R14
       73 NAMECALL                         R10 R10 K31 ["format"]
       75 CALL                             R10 2 1
       76 MOVE                             R9 R10
       77 SETTABLEKS                       R9 R8 K21 ["value"]
       79 LOADK                            R9 K27 ["\""]
       80 SETTABLEKS                       R9 R8 K22 ["openQuote"]
       82 LOADK                            R9 K27 ["\""]
       83 SETTABLEKS                       R9 R8 K23 ["closeQuote"]
       85 SETLIST                          R6 R7 2 [1]
       87 SETTABLEKS                       R6 R5 K14 ["args"]
       89 SETTABLEKS                       R5 R4 K8 ["left"]
       91 SETTABLEKS                       R3 R4 K9 ["right"]
       93 MOVE                             R3 R4
       94 DUPTABLE                         R4 K15 [{"type", "callee", "args"}]
       95 LOADK                            R5 K16 ["Call"]
       96 SETTABLEKS                       R5 R4 K1 ["type"]
       98 DUPTABLE                         R5 K18 [{"type", "name"}]
       99 LOADK                            R6 K19 ["Id"]
      100 SETTABLEKS                       R6 R5 K1 ["type"]
      102 LOADK                            R6 K32 ["api.wrap"]
      103 SETTABLEKS                       R6 R5 K17 ["name"]
      105 SETTABLEKS                       R5 R4 K13 ["callee"]
      107 NEWTABLE                         R5 0 1
      109 DUPTABLE                         R6 K36 [{"type", "verbose", "params", "body"}]
      110 LOADK                            R7 K37 ["Fn"]
      111 SETTABLEKS                       R7 R6 K1 ["type"]
      113 LOADB                            R7 1
      114 SETTABLEKS                       R7 R6 K33 ["verbose"]
      116 NEWTABLE                         R7 0 1
      118 DUPTABLE                         R8 K18 [{"type", "name"}]
      119 LOADK                            R9 K38 ["FnParam"]
      120 SETTABLEKS                       R9 R8 K1 ["type"]
      122 DUPTABLE                         R9 K18 [{"type", "name"}]
      123 LOADK                            R10 K19 ["Id"]
      124 SETTABLEKS                       R10 R9 K1 ["type"]
      126 LOADK                            R10 K39 ["s"]
      127 SETTABLEKS                       R10 R9 K17 ["name"]
      129 SETTABLEKS                       R9 R8 K17 ["name"]
      131 SETLIST                          R7 R8 1 [1]
      133 SETTABLEKS                       R7 R6 K34 ["params"]
      135 SETTABLEKS                       R3 R6 K35 ["body"]
      137 SETLIST                          R5 R6 1 [1]
      139 SETTABLEKS                       R5 R4 K14 ["args"]
      141 MOVE                             R3 R4
      142 SETTABLEKS                       R2 R1 K0 ["useWrap"]
      144 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R3 0 1
        2 MOVE                             R4 R1
        3 SETLIST                          R3 R4 1 [1]
        5 JUMPIF                           R0 ; [+13]
        6 DUPTABLE                         R6 K2 [{"type", "name"}]
        7 LOADK                            R7 K3 ["Id"]
        8 SETTABLEKS                       R7 R6 K0 ["type"]
       10 LOADK                            R7 K4 ["s"]
       11 SETTABLEKS                       R7 R6 K1 ["name"]
       13 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R4 K7 [table.insert]
       18 CALL                             R4 2 0
       19 JUMPIFNOT                        R2 ; [+13]
       20 MOVE                             R4 R2
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       26 MOVE                             R10 R3
       27 MOVE                             R11 R8
       28 GETIMPORT                        R9 K7 [table.insert]
       30 CALL                             R9 2 0
       31 FORGLOOP                         R4 2 ; [-8]
       33 DUPTABLE                         R4 K10 [{"type", "callee", "args"}]
       34 LOADK                            R5 K11 ["Call"]
       35 SETTABLEKS                       R5 R4 K0 ["type"]
       37 DUPTABLE                         R5 K2 [{"type", "name"}]
       38 LOADK                            R6 K3 ["Id"]
       39 SETTABLEKS                       R6 R5 K0 ["type"]
       41 JUMPIFNOT                        R0 ; [+2]
       42 LOADK                            R6 K12 ["api.peek"]
       43 JUMP                             ; [+1]
       44 LOADK                            R6 K13 ["api.unwrap"]
       45 SETTABLEKS                       R6 R5 K1 ["name"]
       47 SETTABLEKS                       R5 R4 K8 ["callee"]
       49 SETTABLEKS                       R3 R4 K9 ["args"]
       51 RETURN                           R4 1

PROTO_3:
        0 DUPTABLE                         R1 K4 [{"type", "value", "openQuote", "closeQuote"}]
        1 LOADK                            R2 K5 ["StringLiteral"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 GETTABLEKS                       R2 R0 K6 ["name"]
        6 SETTABLEKS                       R2 R1 K1 ["value"]
        8 LOADK                            R2 K7 ["\""]
        9 SETTABLEKS                       R2 R1 K2 ["openQuote"]
       11 LOADK                            R2 K7 ["\""]
       12 SETTABLEKS                       R2 R1 K3 ["closeQuote"]
       14 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 JUMPIFEQKS                       R2 K1 ["NumberLiteral"] ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["type"]
        7 JUMPIFEQKS                       R2 K2 ["StringLiteral"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 GETTABLEKS                       R4 R3 K0 ["type"]
        5 JUMPIFNOTEQKS                    R4 K1 ["MemberAccess"] ; [+45]
        7 GETTABLEKS                       R4 R3 K2 ["accessor"]
        9 JUMPIFNOTEQKS                    R4 K3 ["."] ; [+41]
       11 GETTABLEKS                       R4 R3 K4 ["object"]
       13 GETTABLEKS                       R4 R4 K0 ["type"]
       15 JUMPIFNOTEQKS                    R4 K5 ["Id"] ; [+9]
       17 GETTABLEKS                       R5 R1 K6 ["globals"]
       19 GETTABLEKS                       R6 R3 K4 ["object"]
       21 GETTABLEKS                       R6 R6 K7 ["name"]
       23 GETTABLE                         R4 R5 R6
       24 JUMPIF                           R4 ; [+58]
       25 LOADN                            R6 1
       26 GETTABLEKS                       R8 R3 K8 ["member"]
       28 DUPTABLE                         R7 K12 [{"type", "value", "openQuote", "closeQuote"}]
       29 LOADK                            R9 K13 ["StringLiteral"]
       30 SETTABLEKS                       R9 R7 K0 ["type"]
       32 GETTABLEKS                       R9 R8 K7 ["name"]
       34 SETTABLEKS                       R9 R7 K9 ["value"]
       36 LOADK                            R9 K14 ["\""]
       37 SETTABLEKS                       R9 R7 K10 ["openQuote"]
       39 LOADK                            R9 K14 ["\""]
       40 SETTABLEKS                       R9 R7 K11 ["closeQuote"]
       42 FASTCALL3                        TABLE_INSERT R2 R6 R7
       44 MOVE                             R5 R2
       45 GETIMPORT                        R4 K17 [table.insert]
       47 CALL                             R4 3 0
       48 GETTABLEKS                       R3 R3 K4 ["object"]
       50 JUMP                             ; [+31]
       51 GETTABLEKS                       R4 R3 K0 ["type"]
       53 JUMPIFNOTEQKS                    R4 K18 ["IndexAccess"] ; [+29]
       55 GETTABLEKS                       R5 R3 K19 ["index"]
       57 LOADB                            R4 1
       58 GETTABLEKS                       R6 R5 K0 ["type"]
       60 JUMPIFEQKS                       R6 K20 ["NumberLiteral"] ; [+7]
       62 GETTABLEKS                       R6 R5 K0 ["type"]
       64 JUMPIFEQKS                       R6 K13 ["StringLiteral"] ; [+2]
       66 LOADB                            R4 0 +1
       67 LOADB                            R4 1
       68 JUMPIFNOT                        R4 ; [+14]
       69 LOADN                            R6 1
       70 GETTABLEKS                       R7 R3 K19 ["index"]
       72 FASTCALL3                        TABLE_INSERT R2 R6 R7
       74 MOVE                             R5 R2
       75 GETIMPORT                        R4 K17 [table.insert]
       77 CALL                             R4 3 0
       78 GETTABLEKS                       R3 R3 K4 ["object"]
       80 JUMP                             ; [+1]
       81 JUMP                             ; [+1]
       82 JUMPBACK                         ; [-80]
       83 MOVE                             R4 R3
       84 MOVE                             R5 R2
       85 RETURN                           R4 2

PROTO_6:
        0 RETURN                           R0 1

PROTO_7:
        0 RETURN                           R0 1

PROTO_8:
        0 RETURN                           R0 1

PROTO_9:
        0 RETURN                           R0 1

PROTO_10:
        0 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["parts"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["type"]
        7 JUMPIFEQKS                       R7 K2 ["TemplateStringPart"] ; [+8]
        9 GETTABLEKS                       R7 R0 K0 ["parts"]
       11 GETUPVAL                         R8 0
       12 MOVE                             R9 R6
       13 MOVE                             R10 R1
       14 CALL                             R8 2 1
       15 SETTABLE                         R8 R7 R5
       16 FORGLOOP                         R2 2 ; [-12]
       18 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["left"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETTABLEKS                       R2 R0 K0 ["left"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K1 ["right"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K1 ["right"]
       14 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["operator"]
        2 JUMPIFNOTEQKS                    R2 K1 ["&"] ; [+15]
        4 GETTABLEKS                       R2 R1 K2 ["refMode"]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R1 K2 ["refMode"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R0 K3 ["operand"]
       12 MOVE                             R5 R1
       13 LOADB                            R6 1
       14 CALL                             R3 3 1
       15 SETTABLEKS                       R2 R1 K2 ["refMode"]
       17 RETURN                           R3 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R3 R0 K3 ["operand"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R0 K3 ["operand"]
       25 RETURN                           R0 1

PROTO_14:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["callee"]
        3 GETTABLEKS                       R3 R3 K1 ["type"]
        5 JUMPIFNOTEQKS                    R3 K2 ["MemberAccess"] ; [+9]
        7 GETTABLEKS                       R3 R0 K0 ["callee"]
        9 GETTABLEKS                       R3 R3 K3 ["accessor"]
       11 JUMPIFEQKS                       R3 K4 [":"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R4 R0 K0 ["callee"]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R0 K0 ["callee"]
       23 GETTABLEKS                       R3 R0 K5 ["args"]
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 FORGPREP                         R3
       28 GETTABLEKS                       R8 R0 K5 ["args"]
       30 GETUPVAL                         R9 0
       31 MOVE                             R10 R7
       32 MOVE                             R11 R1
       33 CALL                             R9 2 1
       34 SETTABLE                         R9 R8 R6
       35 FORGLOOP                         R3 2 ; [-8]
       37 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["condition"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETTABLEKS                       R2 R0 K0 ["condition"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K1 ["trueExpr"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K1 ["trueExpr"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R3 R0 K2 ["falseExpr"]
       17 MOVE                             R4 R1
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R0 K2 ["falseExpr"]
       21 RETURN                           R0 1

PROTO_16:
        0 GETTABLEKS                       R4 R1 K0 ["boundVars"]
        2 GETTABLEKS                       R5 R0 K1 ["name"]
        4 GETTABLE                         R3 R4 R5
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R1 K2 ["useCtx"]
        8 OR                               R4 R2 R3
        9 GETTABLEKS                       R5 R1 K3 ["useWrap"]
       11 JUMPIF                           R5 ; [+1]
       12 NOT                              R5 R4
       13 SETTABLEKS                       R5 R1 K3 ["useWrap"]
       15 JUMPIFNOT                        R3 ; [+2]
       16 MOVE                             R5 R0
       17 JUMP                             ; [+18]
       18 DUPTABLE                         R5 K8 [{"type", "accessor", "object", "member"}]
       19 LOADK                            R6 K9 ["MemberAccess"]
       20 SETTABLEKS                       R6 R5 K4 ["type"]
       22 LOADK                            R6 K10 ["."]
       23 SETTABLEKS                       R6 R5 K5 ["accessor"]
       25 DUPTABLE                         R6 K11 [{"type", "name"}]
       26 LOADK                            R7 K12 ["Id"]
       27 SETTABLEKS                       R7 R6 K4 ["type"]
       29 LOADK                            R7 K13 ["ctx"]
       30 SETTABLEKS                       R7 R6 K1 ["name"]
       32 SETTABLEKS                       R6 R5 K6 ["object"]
       34 SETTABLEKS                       R0 R5 K7 ["member"]
       36 JUMPIF                           R3 ; [+6]
       37 GETTABLEKS                       R6 R1 K14 ["usedVars"]
       39 GETTABLEKS                       R7 R0 K1 ["name"]
       41 LOADB                            R8 1
       42 SETTABLE                         R8 R6 R7
       43 JUMPIFNOT                        R4 ; [+2]
       44 MOVE                             R6 R5
       45 RETURN                           R6 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R7 R1 K15 ["usePeek"]
       49 MOVE                             R8 R5
       50 CALL                             R6 2 1
       51 RETURN                           R6 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["body"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETTABLEKS                       R2 R0 K0 ["body"]
        7 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["properties"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["type"]
        7 JUMPIFNOTEQKS                    R7 K2 ["TableField"] ; [+8]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R8 R6 K3 ["key"]
       12 MOVE                             R9 R1
       13 CALL                             R7 2 1
       14 SETTABLEKS                       R7 R6 K3 ["key"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R8 R6 K4 ["value"]
       19 MOVE                             R9 R1
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R6 K4 ["value"]
       23 FORGLOOP                         R2 2 ; [-19]
       25 RETURN                           R0 1

PROTO_19:
        0 JUMPIFNOT                        R2 ; [+17]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R0 K0 ["object"]
        4 MOVE                             R5 R1
        5 GETTABLEKS                       R6 R1 K1 ["refMode"]
        7 CALL                             R3 3 1
        8 SETTABLEKS                       R3 R0 K0 ["object"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R4 R0 K2 ["index"]
       13 MOVE                             R5 R1
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R0 K2 ["index"]
       17 RETURN                           R0 1
       18 GETTABLEKS                       R4 R0 K2 ["index"]
       20 LOADB                            R3 1
       21 GETTABLEKS                       R5 R4 K3 ["type"]
       23 JUMPIFEQKS                       R5 K4 ["NumberLiteral"] ; [+7]
       25 GETTABLEKS                       R5 R4 K3 ["type"]
       27 JUMPIFEQKS                       R5 K5 ["StringLiteral"] ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 JUMPIFNOT                        R3 ; [+20]
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R1 K6 ["useWrap"]
       35 GETUPVAL                         R3 1
       36 MOVE                             R4 R0
       37 MOVE                             R5 R1
       38 CALL                             R3 2 2
       39 GETUPVAL                         R5 0
       40 MOVE                             R6 R3
       41 MOVE                             R7 R1
       42 LOADB                            R8 1
       43 CALL                             R5 3 1
       44 MOVE                             R3 R5
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R6 R1 K7 ["usePeek"]
       48 MOVE                             R7 R3
       49 MOVE                             R8 R4
       50 CALL                             R5 3 1
       51 RETURN                           R5 1
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R4 R0 K0 ["object"]
       55 MOVE                             R5 R1
       56 GETTABLEKS                       R6 R1 K1 ["refMode"]
       58 CALL                             R3 3 1
       59 SETTABLEKS                       R3 R0 K0 ["object"]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R4 R0 K2 ["index"]
       64 MOVE                             R5 R1
       65 CALL                             R3 2 1
       66 SETTABLEKS                       R3 R0 K2 ["index"]
       68 LOADB                            R3 1
       69 SETTABLEKS                       R3 R1 K6 ["useWrap"]
       71 GETUPVAL                         R3 2
       72 GETTABLEKS                       R4 R1 K7 ["usePeek"]
       74 MOVE                             R5 R0
       75 CALL                             R3 2 1
       76 RETURN                           R3 1

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["object"]
        2 GETTABLEKS                       R3 R3 K1 ["type"]
        4 JUMPIFNOTEQKS                    R3 K2 ["Id"] ; [+36]
        6 GETTABLEKS                       R3 R0 K3 ["member"]
        8 GETTABLEKS                       R3 R3 K1 ["type"]
       10 JUMPIFNOTEQKS                    R3 K2 ["Id"] ; [+30]
       12 GETTABLEKS                       R3 R0 K0 ["object"]
       14 GETTABLEKS                       R3 R3 K4 ["name"]
       16 JUMPIFNOTEQKS                    R3 K5 ["api"] ; [+24]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R4 R0 K0 ["object"]
       21 MOVE                             R5 R1
       22 GETTABLEKS                       R6 R1 K6 ["refMode"]
       24 CALL                             R3 3 1
       25 SETTABLEKS                       R3 R0 K0 ["object"]
       27 GETTABLEKS                       R3 R1 K7 ["usedVars"]
       29 LOADK                            R5 K8 ["api.%*"]
       30 GETTABLEKS                       R7 R0 K3 ["member"]
       32 GETTABLEKS                       R7 R7 K4 ["name"]
       34 NAMECALL                         R5 R5 K9 ["format"]
       36 CALL                             R5 2 1
       37 MOVE                             R4 R5
       38 LOADB                            R5 1
       39 SETTABLE                         R5 R3 R4
       40 RETURN                           R0 1
       41 JUMPIFNOT                        R2 ; [+10]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R4 R0 K0 ["object"]
       45 MOVE                             R5 R1
       46 GETTABLEKS                       R6 R1 K6 ["refMode"]
       48 CALL                             R3 3 1
       49 SETTABLEKS                       R3 R0 K0 ["object"]
       51 RETURN                           R0 1
       52 GETTABLEKS                       R3 R0 K0 ["object"]
       54 GETTABLEKS                       R3 R3 K1 ["type"]
       56 JUMPIFNOTEQKS                    R3 K2 ["Id"] ; [+19]
       58 GETTABLEKS                       R4 R1 K10 ["globals"]
       60 GETTABLEKS                       R5 R0 K0 ["object"]
       62 GETTABLEKS                       R5 R5 K4 ["name"]
       64 GETTABLE                         R3 R4 R5
       65 JUMPIFNOT                        R3 ; [+10]
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R4 R0 K0 ["object"]
       69 MOVE                             R5 R1
       70 GETTABLEKS                       R6 R1 K6 ["refMode"]
       72 CALL                             R3 3 1
       73 SETTABLEKS                       R3 R0 K0 ["object"]
       75 RETURN                           R0 1
       76 LOADB                            R3 1
       77 SETTABLEKS                       R3 R1 K11 ["useWrap"]
       79 GETUPVAL                         R3 1
       80 MOVE                             R4 R0
       81 MOVE                             R5 R1
       82 CALL                             R3 2 2
       83 GETUPVAL                         R5 0
       84 MOVE                             R6 R3
       85 MOVE                             R7 R1
       86 LOADB                            R8 1
       87 CALL                             R5 3 1
       88 MOVE                             R3 R5
       89 GETUPVAL                         R5 2
       90 GETTABLEKS                       R6 R1 K12 ["usePeek"]
       92 MOVE                             R7 R3
       93 MOVE                             R8 R4
       94 CALL                             R5 3 1
       95 RETURN                           R5 1

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["boundVars"]
        2 GETIMPORT                        R3 K3 [table.clone]
        4 GETTABLEKS                       R4 R1 K0 ["boundVars"]
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R3 R1 K0 ["boundVars"]
        9 GETTABLEKS                       R3 R0 K4 ["params"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R0 K4 ["params"]
       16 GETUPVAL                         R9 0
       17 MOVE                             R10 R7
       18 MOVE                             R11 R1
       19 CALL                             R9 2 1
       20 SETTABLE                         R9 R8 R6
       21 GETTABLEKS                       R8 R7 K5 ["name"]
       23 JUMPIFNOT                        R8 ; [+14]
       24 GETTABLEKS                       R8 R7 K5 ["name"]
       26 GETTABLEKS                       R8 R8 K6 ["type"]
       28 JUMPIFNOTEQKS                    R8 K7 ["Id"] ; [+9]
       30 GETTABLEKS                       R8 R1 K0 ["boundVars"]
       32 GETTABLEKS                       R9 R7 K5 ["name"]
       34 GETTABLEKS                       R9 R9 K5 ["name"]
       36 LOADB                            R10 1
       37 SETTABLE                         R10 R8 R9
       38 FORGLOOP                         R3 2 ; [-25]
       40 LOADB                            R3 1
       41 SETTABLEKS                       R3 R0 K8 ["verbose"]
       43 GETTABLEKS                       R3 R1 K9 ["useWrap"]
       45 GETTABLEKS                       R4 R1 K10 ["usePeek"]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R1 K10 ["usePeek"]
       50 GETTABLEKS                       R5 R0 K11 ["body"]
       52 JUMPIFNOT                        R5 ; [+7]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R6 R0 K11 ["body"]
       56 MOVE                             R7 R1
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R0 K11 ["body"]
       60 SETTABLEKS                       R4 R1 K10 ["usePeek"]
       62 SETTABLEKS                       R3 R1 K9 ["useWrap"]
       64 SETTABLEKS                       R2 R1 K0 ["boundVars"]
       66 GETTABLEKS                       R5 R0 K11 ["body"]
       68 JUMPIFNOT                        R5 ; [+13]
       69 DUPTABLE                         R5 K14 [{"type", "operator", "operand"}]
       70 LOADK                            R6 K15 ["UnaryExpr"]
       71 SETTABLEKS                       R6 R5 K6 ["type"]
       73 LOADK                            R6 K16 ["return"]
       74 SETTABLEKS                       R6 R5 K12 ["operator"]
       76 GETTABLEKS                       R6 R0 K11 ["body"]
       78 SETTABLEKS                       R6 R5 K13 ["operand"]
       80 SETTABLEKS                       R5 R0 K11 ["body"]
       82 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["typeDef"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R0 K0 ["typeDef"]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R0 K0 ["typeDef"]
       10 RETURN                           R0 1

PROTO_23:
        0 RETURN                           R0 1

PROTO_24:
        0 RETURN                           R0 1

PROTO_25:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R3 R0 K0 ["type"]
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R5 R0 K0 ["type"]
       14 GETTABLE                         R3 R4 R5
       15 JUMPIFNOT                        R3 ; [+6]
       16 MOVE                             R4 R3
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 CALL                             R4 3 -1
       21 RETURN                           R4 -1
       22 GETIMPORT                        R4 K4 [error]
       24 LOADK                            R6 K5 ["No visitor for expression type %*"]
       25 GETTABLEKS                       R8 R0 K0 ["type"]
       27 NAMECALL                         R6 R6 K6 ["format"]
       29 CALL                             R6 2 1
       30 MOVE                             R5 R6
       31 CALL                             R4 1 0
       32 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K1 [{"api"}]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K0 ["api"]
        7 GETUPVAL                         R3 1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADB                            R8 1
       12 SETTABLE                         R8 R2 R6
       13 FORGLOOP                         R3 1 ; [-3]
       15 DUPTABLE                         R3 K8 [{"usePeek", "useWrap", "refMode", "globals", "boundVars", "usedVars"}]
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K2 ["usePeek"]
       19 LOADB                            R4 0
       20 SETTABLEKS                       R4 R3 K3 ["useWrap"]
       22 LOADB                            R4 0
       23 SETTABLEKS                       R4 R3 K4 ["refMode"]
       25 SETTABLEKS                       R2 R3 K5 ["globals"]
       27 SETTABLEKS                       R2 R3 K6 ["boundVars"]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K7 ["usedVars"]
       33 GETUPVAL                         R4 2
       34 MOVE                             R5 R1
       35 MOVE                             R6 R3
       36 CALL                             R4 2 1
       37 MOVE                             R1 R4
       38 GETUPVAL                         R4 3
       39 MOVE                             R5 R1
       40 CALL                             R4 1 1
       41 MOVE                             R5 R4
       42 GETTABLEKS                       R6 R3 K7 ["usedVars"]
       44 MOVE                             R7 R1
       45 RETURN                           R5 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["pretty"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["globals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Debug"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K2 ["Parent"]
       32 GETTABLEKS                       R5 R5 K9 ["parseExpr"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K2 ["Parent"]
       41 GETTABLEKS                       R6 R6 K10 ["serializeExpr"]
       43 CALL                             R5 1 1
       44 LOADNIL                          R6
       45 DUPCLOSURE                       R7 K11 [PROTO_0]
       46 NEWCLOSURE                       R8 P1
       47 CAPTURE                          REF R6
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R9 K12 [PROTO_2]
       51 DUPCLOSURE                       R10 K13 [PROTO_3]
       52 DUPCLOSURE                       R11 K14 [PROTO_4]
       53 DUPCLOSURE                       R12 K15 [PROTO_5]
       54 DUPTABLE                         R13 K35 [{"NumberLiteral", "StringLiteral", "BooleanLiteral", "NilLiteral", "Variable", "TemplateString", "BinaryExpr", "UnaryExpr", "Call", "TernaryExpr", "Id", "ParenExpr", "TableLiteral", "IndexAccess", "MemberAccess", "Fn", "FnParam", "TypeDef", "VarArgs"}]
       55 DUPCLOSURE                       R14 K36 [PROTO_6]
       56 SETTABLEKS                       R14 R13 K16 ["NumberLiteral"]
       58 DUPCLOSURE                       R14 K37 [PROTO_7]
       59 SETTABLEKS                       R14 R13 K17 ["StringLiteral"]
       61 DUPCLOSURE                       R14 K38 [PROTO_8]
       62 SETTABLEKS                       R14 R13 K18 ["BooleanLiteral"]
       64 DUPCLOSURE                       R14 K39 [PROTO_9]
       65 SETTABLEKS                       R14 R13 K19 ["NilLiteral"]
       67 DUPCLOSURE                       R14 K40 [PROTO_10]
       68 SETTABLEKS                       R14 R13 K20 ["Variable"]
       70 NEWCLOSURE                       R14 P11
       71 CAPTURE                          REF R6
       72 SETTABLEKS                       R14 R13 K21 ["TemplateString"]
       74 NEWCLOSURE                       R14 P12
       75 CAPTURE                          REF R6
       76 SETTABLEKS                       R14 R13 K22 ["BinaryExpr"]
       78 NEWCLOSURE                       R14 P13
       79 CAPTURE                          REF R6
       80 SETTABLEKS                       R14 R13 K23 ["UnaryExpr"]
       82 NEWCLOSURE                       R14 P14
       83 CAPTURE                          REF R6
       84 SETTABLEKS                       R14 R13 K24 ["Call"]
       86 NEWCLOSURE                       R14 P15
       87 CAPTURE                          REF R6
       88 SETTABLEKS                       R14 R13 K25 ["TernaryExpr"]
       90 DUPCLOSURE                       R14 K41 [PROTO_16]
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R14 R13 K26 ["Id"]
       94 NEWCLOSURE                       R14 P17
       95 CAPTURE                          REF R6
       96 SETTABLEKS                       R14 R13 K27 ["ParenExpr"]
       98 NEWCLOSURE                       R14 P18
       99 CAPTURE                          REF R6
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R14 R13 K28 ["TableLiteral"]
      103 NEWCLOSURE                       R14 P19
      104 CAPTURE                          REF R6
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R9
      107 SETTABLEKS                       R14 R13 K29 ["IndexAccess"]
      109 NEWCLOSURE                       R14 P20
      110 CAPTURE                          REF R6
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R9
      113 SETTABLEKS                       R14 R13 K30 ["MemberAccess"]
      115 NEWCLOSURE                       R14 P21
      116 CAPTURE                          REF R6
      117 SETTABLEKS                       R14 R13 K31 ["Fn"]
      119 NEWCLOSURE                       R14 P22
      120 CAPTURE                          REF R6
      121 SETTABLEKS                       R14 R13 K32 ["FnParam"]
      123 DUPCLOSURE                       R14 K42 [PROTO_23]
      124 SETTABLEKS                       R14 R13 K33 ["TypeDef"]
      126 DUPCLOSURE                       R14 K43 [PROTO_24]
      127 SETTABLEKS                       R14 R13 K34 ["VarArgs"]
      129 DUPCLOSURE                       R6 K44 [PROTO_25]
      130 CAPTURE                          VAL R13
      131 DUPCLOSURE                       R14 K45 [PROTO_26]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R5
      136 CLOSEUPVALS                      R6
      137 RETURN                           R14 1
