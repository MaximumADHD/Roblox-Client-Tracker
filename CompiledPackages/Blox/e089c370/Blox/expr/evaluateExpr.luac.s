PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R1
        4 JUMPIFNOT                        R2 ; [+1]
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R4 0
        7 RETURN                           R4 1
        8 JUMPIFNOTLT                      R3 R2 ; [+3]
       10 LOADB                            R4 1
       11 RETURN                           R4 1
       12 JUMPIFNOTEQ                      R2 R3 ; [+6]
       14 GETUPVAL                         R5 1
       15 GETTABLE                         R4 R5 R0
       16 JUMPIFNOT                        R4 ; [+2]
       17 LOADB                            R4 1
       18 RETURN                           R4 1
       19 LOADB                            R4 0
       20 RETURN                           R4 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [type]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+4]
        9 GETTABLEKS                       R1 R0 K0 ["type"]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 1
       13 GETTABLEKS                       R1 R0 K0 ["type"]
       15 JUMPIFNOTEQKS                    R1 K3 ["BinaryExpr"] ; [+98]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R3 R0 K4 ["left"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R4 R0 K5 ["right"]
       24 CALL                             R3 1 1
       25 FASTCALL1                        TYPE R2 ; [+3]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R4 K1 [type]
       29 CALL                             R4 1 1
       30 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+61]
       32 GETTABLEKS                       R4 R2 K0 ["type"]
       34 JUMPIFNOTEQKS                    R4 K3 ["BinaryExpr"] ; [+57]
       36 GETTABLEKS                       R5 R0 K6 ["operator"]
       38 GETTABLEKS                       R6 R2 K6 ["operator"]
       40 GETUPVAL                         R8 1
       41 GETTABLE                         R7 R8 R5
       42 GETUPVAL                         R9 1
       43 GETTABLE                         R8 R9 R6
       44 JUMPIFNOT                        R7 ; [+1]
       45 JUMPIF                           R8 ; [+2]
       46 LOADB                            R4 0
       47 JUMP                             ; [+12]
       48 JUMPIFNOTLT                      R8 R7 ; [+3]
       50 LOADB                            R4 1
       51 JUMP                             ; [+8]
       52 JUMPIFNOTEQ                      R7 R8 ; [+6]
       54 GETUPVAL                         R10 2
       55 GETTABLE                         R9 R10 R5
       56 JUMPIFNOT                        R9 ; [+2]
       57 LOADB                            R4 1
       58 JUMP                             ; [+1]
       59 LOADB                            R4 0
       60 JUMPIFNOT                        R4 ; [+31]
       61 GETUPVAL                         R4 0
       62 DUPTABLE                         R5 K7 [{"type", "operator", "left", "right"}]
       63 LOADK                            R6 K3 ["BinaryExpr"]
       64 SETTABLEKS                       R6 R5 K0 ["type"]
       66 GETTABLEKS                       R6 R2 K6 ["operator"]
       68 SETTABLEKS                       R6 R5 K6 ["operator"]
       70 GETTABLEKS                       R6 R2 K4 ["left"]
       72 SETTABLEKS                       R6 R5 K4 ["left"]
       74 DUPTABLE                         R6 K7 [{"type", "operator", "left", "right"}]
       75 LOADK                            R7 K3 ["BinaryExpr"]
       76 SETTABLEKS                       R7 R6 K0 ["type"]
       78 GETTABLEKS                       R7 R0 K6 ["operator"]
       80 SETTABLEKS                       R7 R6 K6 ["operator"]
       82 GETTABLEKS                       R7 R2 K5 ["right"]
       84 SETTABLEKS                       R7 R6 K4 ["left"]
       86 SETTABLEKS                       R3 R6 K5 ["right"]
       88 SETTABLEKS                       R6 R5 K5 ["right"]
       90 CALL                             R4 1 -1
       91 RETURN                           R4 -1
       92 GETTABLEKS                       R4 R0 K4 ["left"]
       94 JUMPIFNOTEQ                      R2 R4 ; [+6]
       96 GETTABLEKS                       R4 R0 K5 ["right"]
       98 JUMPIFNOTEQ                      R3 R4 ; [+2]
      100 RETURN                           R0 1
      101 DUPTABLE                         R4 K7 [{"type", "operator", "left", "right"}]
      102 LOADK                            R5 K3 ["BinaryExpr"]
      103 SETTABLEKS                       R5 R4 K0 ["type"]
      105 GETTABLEKS                       R5 R0 K6 ["operator"]
      107 SETTABLEKS                       R5 R4 K6 ["operator"]
      109 SETTABLEKS                       R2 R4 K4 ["left"]
      111 SETTABLEKS                       R3 R4 K5 ["right"]
      113 RETURN                           R4 1
      114 JUMPIFNOTEQKS                    R1 K8 ["UnaryExpr"] ; [+17]
      116 GETUPVAL                         R2 0
      117 GETTABLEKS                       R3 R0 K9 ["operand"]
      119 CALL                             R2 1 1
      120 GETTABLEKS                       R3 R0 K9 ["operand"]
      122 JUMPIFNOTEQ                      R2 R3 ; [+2]
      124 RETURN                           R0 1
      125 GETIMPORT                        R3 K11 [table.clone]
      127 MOVE                             R4 R0
      128 CALL                             R3 1 1
      129 SETTABLEKS                       R2 R3 K9 ["operand"]
      131 RETURN                           R3 1
      132 JUMPIFNOTEQKS                    R1 K12 ["Call"] ; [+37]
      134 GETUPVAL                         R2 0
      135 GETTABLEKS                       R3 R0 K13 ["callee"]
      137 CALL                             R2 1 1
      138 LOADB                            R3 0
      139 NEWTABLE                         R4 0 0
      141 GETTABLEKS                       R5 R0 K14 ["args"]
      143 LOADNIL                          R6
      144 LOADNIL                          R7
      145 FORGPREP                         R5
      146 GETUPVAL                         R10 0
      147 MOVE                             R11 R9
      148 CALL                             R10 1 1
      149 SETTABLE                         R10 R4 R8
      150 JUMPIFEQ                         R10 R9 ; [+2]
      152 LOADB                            R3 1
      153 FORGLOOP                         R5 2 ; [-8]
      155 GETTABLEKS                       R5 R0 K13 ["callee"]
      157 JUMPIFNOTEQ                      R2 R5 ; [+3]
      159 JUMPIF                           R3 ; [+1]
      160 RETURN                           R0 1
      161 GETIMPORT                        R5 K11 [table.clone]
      163 MOVE                             R6 R0
      164 CALL                             R5 1 1
      165 SETTABLEKS                       R2 R5 K13 ["callee"]
      167 SETTABLEKS                       R4 R5 K14 ["args"]
      169 RETURN                           R5 1
      170 JUMPIFNOTEQKS                    R1 K15 ["Fn"] ; [+17]
      172 GETUPVAL                         R2 0
      173 GETTABLEKS                       R3 R0 K16 ["body"]
      175 CALL                             R2 1 1
      176 GETTABLEKS                       R3 R0 K16 ["body"]
      178 JUMPIFNOTEQ                      R2 R3 ; [+2]
      180 RETURN                           R0 1
      181 GETIMPORT                        R3 K11 [table.clone]
      183 MOVE                             R4 R0
      184 CALL                             R3 1 1
      185 SETTABLEKS                       R2 R3 K16 ["body"]
      187 RETURN                           R3 1
      188 JUMPIFNOTEQKS                    R1 K17 ["TernaryExpr"] ; [+37]
      190 GETUPVAL                         R2 0
      191 GETTABLEKS                       R3 R0 K18 ["condition"]
      193 CALL                             R2 1 1
      194 GETUPVAL                         R3 0
      195 GETTABLEKS                       R4 R0 K19 ["trueExpr"]
      197 CALL                             R3 1 1
      198 GETUPVAL                         R4 0
      199 GETTABLEKS                       R5 R0 K20 ["falseExpr"]
      201 CALL                             R4 1 1
      202 GETTABLEKS                       R5 R0 K18 ["condition"]
      204 JUMPIFNOTEQ                      R2 R5 ; [+10]
      206 GETTABLEKS                       R5 R0 K19 ["trueExpr"]
      208 JUMPIFNOTEQ                      R3 R5 ; [+6]
      210 GETTABLEKS                       R5 R0 K20 ["falseExpr"]
      212 JUMPIFNOTEQ                      R4 R5 ; [+2]
      214 RETURN                           R0 1
      215 DUPTABLE                         R5 K21 [{"type", "condition", "trueExpr", "falseExpr"}]
      216 LOADK                            R6 K17 ["TernaryExpr"]
      217 SETTABLEKS                       R6 R5 K0 ["type"]
      219 SETTABLEKS                       R2 R5 K18 ["condition"]
      221 SETTABLEKS                       R3 R5 K19 ["trueExpr"]
      223 SETTABLEKS                       R4 R5 K20 ["falseExpr"]
      225 RETURN                           R5 1
      226 JUMPIFNOTEQKS                    R1 K22 ["ParenExpr"] ; [+17]
      228 GETUPVAL                         R2 0
      229 GETTABLEKS                       R3 R0 K16 ["body"]
      231 CALL                             R2 1 1
      232 GETTABLEKS                       R3 R0 K16 ["body"]
      234 JUMPIFNOTEQ                      R2 R3 ; [+2]
      236 RETURN                           R0 1
      237 DUPTABLE                         R3 K23 [{"type", "body"}]
      238 LOADK                            R4 K22 ["ParenExpr"]
      239 SETTABLEKS                       R4 R3 K0 ["type"]
      241 SETTABLEKS                       R2 R3 K16 ["body"]
      243 RETURN                           R3 1
      244 JUMPIFNOTEQKS                    R1 K24 ["MemberAccess"] ; [+17]
      246 GETUPVAL                         R2 0
      247 GETTABLEKS                       R3 R0 K25 ["object"]
      249 CALL                             R2 1 1
      250 GETTABLEKS                       R3 R0 K25 ["object"]
      252 JUMPIFNOTEQ                      R2 R3 ; [+2]
      254 RETURN                           R0 1
      255 GETIMPORT                        R3 K11 [table.clone]
      257 MOVE                             R4 R0
      258 CALL                             R3 1 1
      259 SETTABLEKS                       R2 R3 K25 ["object"]
      261 RETURN                           R3 1
      262 JUMPIFNOTEQKS                    R1 K26 ["IndexAccess"] ; [+27]
      264 GETUPVAL                         R2 0
      265 GETTABLEKS                       R3 R0 K25 ["object"]
      267 CALL                             R2 1 1
      268 GETUPVAL                         R3 0
      269 GETTABLEKS                       R4 R0 K27 ["index"]
      271 CALL                             R3 1 1
      272 GETTABLEKS                       R4 R0 K25 ["object"]
      274 JUMPIFNOTEQ                      R2 R4 ; [+6]
      276 GETTABLEKS                       R4 R0 K27 ["index"]
      278 JUMPIFNOTEQ                      R3 R4 ; [+2]
      280 RETURN                           R0 1
      281 GETIMPORT                        R4 K11 [table.clone]
      283 MOVE                             R5 R0
      284 CALL                             R4 1 1
      285 SETTABLEKS                       R2 R4 K25 ["object"]
      287 SETTABLEKS                       R3 R4 K27 ["index"]
      289 RETURN                           R4 1
      290 JUMPIFNOTEQKS                    R1 K28 ["TemplateString"] ; [+43]
      292 LOADB                            R2 0
      293 NEWTABLE                         R3 0 0
      295 GETTABLEKS                       R4 R0 K29 ["parts"]
      297 LOADNIL                          R5
      298 LOADNIL                          R6
      299 FORGPREP                         R4
      300 FASTCALL1                        TYPE R8 ; [+3]
      301 MOVE                             R10 R8
      302 GETIMPORT                        R9 K1 [type]
      304 CALL                             R9 1 1
      305 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+16]
      307 GETTABLEKS                       R9 R8 K0 ["type"]
      309 JUMPIFNOT                        R9 ; [+12]
      310 GETTABLEKS                       R9 R8 K0 ["type"]
      312 JUMPIFEQKS                       R9 K30 ["TemplateStringPart"] ; [+9]
      314 GETUPVAL                         R9 0
      315 MOVE                             R10 R8
      316 CALL                             R9 1 1
      317 SETTABLE                         R9 R3 R7
      318 JUMPIFEQ                         R9 R8 ; [+4]
      320 LOADB                            R2 1
      321 JUMP                             ; [+1]
      322 SETTABLE                         R8 R3 R7
      323 FORGLOOP                         R4 2 ; [-24]
      325 JUMPIF                           R2 ; [+1]
      326 RETURN                           R0 1
      327 GETIMPORT                        R4 K11 [table.clone]
      329 MOVE                             R5 R0
      330 CALL                             R4 1 1
      331 SETTABLEKS                       R3 R4 K29 ["parts"]
      333 RETURN                           R4 1
      334 JUMPIFNOTEQKS                    R1 K31 ["TableLiteral"] ; [+38]
      336 LOADB                            R2 0
      337 NEWTABLE                         R3 0 0
      339 GETTABLEKS                       R4 R0 K32 ["properties"]
      341 LOADNIL                          R5
      342 LOADNIL                          R6
      343 FORGPREP                         R4
      344 GETUPVAL                         R9 0
      345 GETTABLEKS                       R10 R8 K33 ["value"]
      347 CALL                             R9 1 1
      348 GETTABLEKS                       R10 R8 K33 ["value"]
      350 JUMPIFEQ                         R9 R10 ; [+10]
      352 LOADB                            R2 1
      353 GETIMPORT                        R10 K11 [table.clone]
      355 MOVE                             R11 R8
      356 CALL                             R10 1 1
      357 SETTABLEKS                       R9 R10 K33 ["value"]
      359 SETTABLE                         R10 R3 R7
      360 JUMP                             ; [+1]
      361 SETTABLE                         R8 R3 R7
      362 FORGLOOP                         R4 2 ; [-19]
      364 JUMPIF                           R2 ; [+1]
      365 RETURN                           R0 1
      366 GETIMPORT                        R4 K11 [table.clone]
      368 MOVE                             R5 R0
      369 CALL                             R4 1 1
      370 SETTABLEKS                       R3 R4 K32 ["properties"]
      372 RETURN                           R4 1
      373 RETURN                           R0 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQ                      R3 R4 ; [+27]
       12 JUMPIFNOTEQKS                    R2 K2 ["<"] ; [+6]
       14 JUMPIFLT                         R0 R1 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 RETURN                           R3 1
       19 JUMPIFNOTEQKS                    R2 K3 [">"] ; [+6]
       21 JUMPIFLT                         R1 R0 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 RETURN                           R3 1
       26 JUMPIFNOTEQKS                    R2 K4 ["<="] ; [+6]
       28 JUMPIFLE                         R0 R1 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 RETURN                           R3 1
       33 JUMPIFLE                         R1 R0 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 RETURN                           R3 1
       38 LOADB                            R3 0
       39 RETURN                           R3 1

PROTO_3:
        0 ADD                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_4:
        0 SUB                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_5:
        0 MUL                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_6:
        0 DIV                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_7:
        0 MOD                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_8:
        0 POW                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_9:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 CONCAT                           R2 R3 R4
        3 RETURN                           R2 1

PROTO_10:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_11:
        0 JUMPIFNOTEQ                      R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_12:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQ                      R3 R4 ; [+6]
       12 JUMPIFLT                         R0 R1 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 LOADB                            R2 0
       18 RETURN                           R2 1

PROTO_13:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQ                      R3 R4 ; [+6]
       12 JUMPIFLT                         R1 R0 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 LOADB                            R2 0
       18 RETURN                           R2 1

PROTO_14:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQ                      R3 R4 ; [+6]
       12 JUMPIFLE                         R0 R1 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 LOADB                            R2 0
       18 RETURN                           R2 1

PROTO_15:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQ                      R3 R4 ; [+6]
       12 JUMPIFLE                         R1 R0 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 LOADB                            R2 0
       18 RETURN                           R2 1

PROTO_16:
        0 LOADK                            R4 K0 ["."]
        1 LOADN                            R5 1
        2 LOADB                            R6 1
        3 NAMECALL                         R2 R0 K1 ["find"]
        5 CALL                             R2 4 1
        6 JUMPIFNOT                        R2 ; [+18]
        7 LOADK                            R4 K0 ["."]
        8 NAMECALL                         R2 R0 K2 ["split"]
       10 CALL                             R2 2 1
       11 GETTABLEN                        R4 R2 1
       12 GETTABLE                         R3 R1 R4
       13 LOADN                            R6 2
       14 LENGTH                           R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 JUMPIFNOTEQKNIL                  R3 ; [+3]
       19 LOADNIL                          R7
       20 RETURN                           R7 1
       21 GETTABLE                         R7 R2 R6
       22 GETTABLE                         R3 R3 R7
       23 FORNLOOP                         R4
       24 RETURN                           R3 1
       25 GETTABLE                         R2 R1 R0
       26 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 RETURN                           R2 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 RETURN                           R2 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 RETURN                           R2 1

PROTO_20:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["name"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["object"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETTABLEKS                       R4 R0 K1 ["member"]
       11 GETTABLEKS                       R4 R4 K2 ["name"]
       13 GETTABLE                         R3 R2 R4
       14 RETURN                           R3 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["object"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R0 K1 ["index"]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 GETTABLE                         R4 R2 R3
       15 RETURN                           R4 1

PROTO_24:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["callee"]
        3 FASTCALL1                        TYPE R4 ; [+2]
        4 GETIMPORT                        R3 K2 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+16]
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R0 K0 ["callee"]
       12 GETTABLEKS                       R3 R3 K1 ["type"]
       14 JUMPIFNOTEQKS                    R3 K4 ["MemberAccess"] ; [+9]
       16 GETTABLEKS                       R3 R0 K0 ["callee"]
       18 GETTABLEKS                       R3 R3 K5 ["accessor"]
       20 JUMPIFEQKS                       R3 K6 [":"] ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 JUMPIFNOT                        R2 ; [+16]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R6 R0 K0 ["callee"]
       30 GETTABLEKS                       R6 R6 K7 ["object"]
       32 MOVE                             R7 R1
       33 CALL                             R5 2 1
       34 MOVE                             R4 R5
       35 GETTABLEKS                       R5 R0 K0 ["callee"]
       37 GETTABLEKS                       R5 R5 K8 ["member"]
       39 GETTABLEKS                       R5 R5 K9 ["name"]
       41 GETTABLE                         R3 R4 R5
       42 JUMP                             ; [+6]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R6 R0 K0 ["callee"]
       46 MOVE                             R7 R1
       47 CALL                             R5 2 1
       48 MOVE                             R3 R5
       49 NEWTABLE                         R5 0 1
       51 LOADN                            R6 0
       52 JUMPIFNOT                        R2 ; [+2]
       53 LOADN                            R6 1
       54 SETTABLEN                        R4 R5 1
       55 GETTABLEKS                       R7 R0 K10 ["args"]
       57 LOADNIL                          R8
       58 LOADNIL                          R9
       59 FORGPREP                         R7
       60 FASTCALL1                        TYPE R11 ; [+3]
       61 MOVE                             R13 R11
       62 GETIMPORT                        R12 K2 [type]
       64 CALL                             R12 1 1
       65 JUMPIFNOTEQKS                    R12 K3 ["table"] ; [+21]
       67 GETTABLEKS                       R12 R11 K1 ["type"]
       69 JUMPIFNOTEQKS                    R12 K11 ["VarArgs"] ; [+17]
       71 GETTABLEKS                       R12 R1 K12 ["$$varargs"]
       73 GETTABLEKS                       R13 R1 K13 ["$$varargs_start"]
       75 JUMPIFNOT                        R12 ; [+17]
       76 JUMPIFNOT                        R13 ; [+16]
       77 MOVE                             R16 R13
       78 GETTABLEKS                       R14 R12 K14 ["n"]
       80 LOADN                            R15 1
       81 FORNPREP                         R14
       82 ADDK                             R6 R6 K15 [1]
       83 GETTABLE                         R17 R12 R16
       84 SETTABLE                         R17 R5 R6
       85 FORNLOOP                         R14
       86 JUMP                             ; [+6]
       87 ADDK                             R6 R6 K15 [1]
       88 GETUPVAL                         R12 0
       89 MOVE                             R13 R11
       90 MOVE                             R14 R1
       91 CALL                             R12 2 1
       92 SETTABLE                         R12 R5 R6
       93 FORGLOOP                         R7 2 ; [-34]
       95 MOVE                             R7 R3
       96 LOADN                            R10 1
       97 FASTCALL3                        TABLE_UNPACK R5 R10 R6
       99 MOVE                             R9 R5
      100 MOVE                             R11 R6
      101 GETIMPORT                        R8 K17 [unpack]
      103 CALL                             R8 3 -1
      104 CALL                             R7 -1 -1
      105 RETURN                           R7 -1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["operator"]
        2 JUMPIFNOTEQKS                    R2 K1 ["not"] ; [+8]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K2 ["operand"]
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 NOT                              R2 R3
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R0 K0 ["operator"]
       13 JUMPIFNOTEQKS                    R2 K3 ["-"] ; [+8]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R4 R0 K2 ["operand"]
       18 MOVE                             R5 R1
       19 CALL                             R3 2 1
       20 MINUS                            R2 R3
       21 RETURN                           R2 1
       22 GETTABLEKS                       R2 R0 K0 ["operator"]
       24 JUMPIFNOTEQKS                    R2 K4 ["#"] ; [+8]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R4 R0 K2 ["operand"]
       29 MOVE                             R5 R1
       30 CALL                             R3 2 1
       31 LENGTH                           R2 R3
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R0 K0 ["operator"]
       35 JUMPIFNOTEQKS                    R2 K5 ["return"] ; [+7]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R3 R0 K2 ["operand"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1
       43 LOADNIL                          R2
       44 RETURN                           R2 1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["operator"]
        2 JUMPIFNOTEQKS                    R2 K1 ["and"] ; [+15]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K2 ["left"]
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+2]
       10 MOVE                             R4 R3
       11 RETURN                           R4 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R5 R0 K3 ["right"]
       15 MOVE                             R6 R1
       16 CALL                             R4 2 1
       17 RETURN                           R4 1
       18 JUMPIFNOTEQKS                    R2 K4 ["or"] ; [+15]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R4 R0 K2 ["left"]
       23 MOVE                             R5 R1
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+2]
       26 MOVE                             R4 R3
       27 RETURN                           R4 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R5 R0 K3 ["right"]
       31 MOVE                             R6 R1
       32 CALL                             R4 2 1
       33 RETURN                           R4 1
       34 JUMPIFNOTEQKS                    R2 K5 [";"] ; [+12]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R4 R0 K2 ["left"]
       39 MOVE                             R5 R1
       40 CALL                             R3 2 0
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R4 R0 K3 ["right"]
       44 MOVE                             R5 R1
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1
       47 JUMPIFNOTEQKS                    R2 K6 [","] ; [+12]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R4 R0 K2 ["left"]
       52 MOVE                             R5 R1
       53 CALL                             R3 2 1
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R5 R0 K3 ["right"]
       57 MOVE                             R6 R1
       58 CALL                             R4 2 -1
       59 RETURN                           R3 -1
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R4 R0 K2 ["left"]
       63 MOVE                             R5 R1
       64 CALL                             R3 2 1
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R5 R0 K3 ["right"]
       68 MOVE                             R6 R1
       69 CALL                             R4 2 1
       70 GETUPVAL                         R6 1
       71 GETTABLE                         R5 R6 R2
       72 JUMPIFNOT                        R5 ; [+5]
       73 MOVE                             R6 R5
       74 MOVE                             R7 R3
       75 MOVE                             R8 R4
       76 CALL                             R6 2 -1
       77 RETURN                           R6 -1
       78 GETIMPORT                        R6 K8 [error]
       80 LOADK                            R8 K9 ["Unknown binary operator: %*"]
       81 MOVE                             R10 R2
       82 NAMECALL                         R8 R8 K10 ["format"]
       84 CALL                             R8 2 1
       85 MOVE                             R7 R8
       86 CALL                             R6 1 0
       87 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["condition"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K1 ["trueExpr"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R3 R0 K2 ["falseExpr"]
       15 MOVE                             R4 R1
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_28:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R1 0 0
        3 DUPTABLE                         R2 K1 [{"__index"}]
        4 GETUPVAL                         R3 0
        5 SETTABLEKS                       R3 R2 K0 ["__index"]
        7 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        9 GETIMPORT                        R0 K3 [setmetatable]
       11 CALL                             R0 2 1
       12 GETIMPORT                        R1 K6 [table.pack]
       14 GETVARARGS                       R2 -1
       15 CALL                             R1 -1 1
       16 LOADN                            R2 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K7 ["params"]
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETTABLEKS                       R8 R7 K8 ["type"]
       25 JUMPIFNOTEQKS                    R8 K9 ["VarArgs"] ; [+2]
       27 JUMP                             ; [+12]
       28 GETTABLEKS                       R8 R7 K10 ["name"]
       30 JUMPIFNOT                        R8 ; [+7]
       31 GETTABLEKS                       R8 R7 K10 ["name"]
       33 GETTABLEKS                       R8 R8 K10 ["name"]
       35 GETTABLE                         R9 R1 R6
       36 SETTABLE                         R9 R0 R8
       37 MOVE                             R2 R6
       38 FORGLOOP                         R3 2 ; [-16]
       40 SETTABLEKS                       R1 R0 K11 ["$$varargs"]
       42 ADDK                             R3 R2 K12 [1]
       43 SETTABLEKS                       R3 R0 K13 ["$$varargs_start"]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K14 ["body"]
       48 JUMPIFNOT                        R3 ; [+7]
       49 GETUPVAL                         R3 2
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K14 ["body"]
       53 MOVE                             R5 R0
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1
       56 LOADNIL                          R3
       57 RETURN                           R3 1

PROTO_29:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["body"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_31:
        0 GETIMPORT                        R2 K2 [table.create]
        2 GETTABLEKS                       R4 R0 K3 ["parts"]
        4 LENGTH                           R3 R4
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K3 ["parts"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K4 ["type"]
       13 JUMPIFNOTEQKS                    R8 K5 ["TemplateStringPart"] ; [+5]
       15 GETTABLEKS                       R8 R7 K6 ["value"]
       17 SETTABLE                         R8 R2 R6
       18 JUMP                             ; [+9]
       19 GETUPVAL                         R9 0
       20 MOVE                             R10 R7
       21 MOVE                             R11 R1
       22 CALL                             R9 2 -1
       23 FASTCALL                         TOSTRING ; [+2]
       24 GETIMPORT                        R8 K8 [tostring]
       26 CALL                             R8 -1 1
       27 SETTABLE                         R8 R2 R6
       28 FORGLOOP                         R3 2 ; [-18]
       30 GETIMPORT                        R3 K10 [table.concat]
       32 MOVE                             R4 R2
       33 LOADK                            R5 K11 [""]
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1

PROTO_32:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["properties"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R7 K1 ["type"]
        9 JUMPIFEQKS                       R8 K2 ["TableField"] ; [+5]
       11 GETTABLEKS                       R8 R7 K1 ["type"]
       13 JUMPIFNOTEQKS                    R8 K3 ["TableEntry"] ; [+24]
       15 GETTABLEKS                       R10 R7 K4 ["key"]
       17 FASTCALL1                        TYPE R10 ; [+2]
       18 GETIMPORT                        R9 K5 [type]
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKS                    R9 K6 ["string"] ; [+4]
       23 GETTABLEKS                       R8 R7 K4 ["key"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R9 R7 K4 ["key"]
       29 MOVE                             R10 R1
       30 CALL                             R8 2 1
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R10 R7 K7 ["value"]
       34 MOVE                             R11 R1
       35 CALL                             R9 2 1
       36 SETTABLE                         R9 R2 R8
       37 JUMP                             ; [+10]
       38 MOVE                             R9 R2
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R11 R7 K7 ["value"]
       42 MOVE                             R12 R1
       43 CALL                             R10 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R8 K10 [table.insert]
       47 CALL                             R8 -1 0
       48 FORGLOOP                         R3 2 ; [-42]
       50 RETURN                           R2 1

PROTO_33:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLE                         R2 R1 R3
        3 RETURN                           R2 1

PROTO_34:
        0 GETTABLEKS                       R2 R1 K0 ["$$varargs"]
        2 GETTABLEKS                       R3 R1 K1 ["$$varargs_start"]
        4 JUMPIFNOT                        R2 ; [+11]
        5 JUMPIFNOT                        R3 ; [+10]
        6 GETTABLEKS                       R7 R2 K2 ["n"]
        8 FASTCALL3                        TABLE_UNPACK R2 R3 R7
       10 MOVE                             R5 R2
       11 MOVE                             R6 R3
       12 GETIMPORT                        R4 K4 [unpack]
       14 CALL                             R4 3 -1
       15 RETURN                           R4 -1
       16 LOADNIL                          R4
       17 RETURN                           R4 1

PROTO_35:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K0 ["type"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOT                        R2 ; [+5]
        9 MOVE                             R3 R2
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 CALL                             R3 2 -1
       13 RETURN                           R3 -1
       14 GETIMPORT                        R3 K2 [error]
       16 LOADK                            R5 K3 ["[evaluateExpr] Unknown AST node type: %*"]
       17 GETTABLEKS                       R8 R0 K0 ["type"]
       19 FASTCALL1                        TOSTRING R8 ; [+2]
       20 GETIMPORT                        R7 K5 [tostring]
       22 CALL                             R7 1 1
       23 NAMECALL                         R5 R5 K6 ["format"]
       25 CALL                             R5 2 1
       26 MOVE                             R4 R5
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R3 K2 [{"ctx", "api"}]
        1 SETTABLEKS                       R0 R3 K0 ["ctx"]
        3 SETTABLEKS                       R1 R3 K1 ["api"]
        5 DUPTABLE                         R4 K4 [{"__index"}]
        6 GETUPVAL                         R5 0
        7 SETTABLEKS                       R5 R4 K3 ["__index"]
        9 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       11 GETIMPORT                        R2 K6 [setmetatable]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R2
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["globals"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 32 0
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K7 [";"]
       19 LOADN                            R3 1
       20 SETTABLEKS                       R3 R2 K8 [","]
       22 LOADN                            R3 2
       23 SETTABLEKS                       R3 R2 K9 ["or"]
       25 LOADN                            R3 3
       26 SETTABLEKS                       R3 R2 K10 ["and"]
       28 LOADN                            R3 4
       29 SETTABLEKS                       R3 R2 K11 ["=="]
       31 LOADN                            R3 4
       32 SETTABLEKS                       R3 R2 K12 ["~="]
       34 LOADN                            R3 4
       35 SETTABLEKS                       R3 R2 K13 ["<"]
       37 LOADN                            R3 4
       38 SETTABLEKS                       R3 R2 K14 [">"]
       40 LOADN                            R3 4
       41 SETTABLEKS                       R3 R2 K15 ["<="]
       43 LOADN                            R3 4
       44 SETTABLEKS                       R3 R2 K16 [">="]
       46 LOADN                            R3 5
       47 SETTABLEKS                       R3 R2 K17 [".."]
       49 LOADN                            R3 6
       50 SETTABLEKS                       R3 R2 K18 ["+"]
       52 LOADN                            R3 6
       53 SETTABLEKS                       R3 R2 K19 ["-"]
       55 LOADN                            R3 7
       56 SETTABLEKS                       R3 R2 K20 ["*"]
       58 LOADN                            R3 7
       59 SETTABLEKS                       R3 R2 K21 ["/"]
       61 LOADN                            R3 7
       62 SETTABLEKS                       R3 R2 K22 ["%"]
       64 LOADN                            R3 8
       65 SETTABLEKS                       R3 R2 K23 ["^"]
       67 NEWTABLE                         R3 2 0
       69 LOADB                            R4 1
       70 SETTABLEKS                       R4 R3 K23 ["^"]
       72 LOADB                            R4 1
       73 SETTABLEKS                       R4 R3 K17 [".."]
       75 DUPCLOSURE                       R4 K24 [PROTO_0]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 LOADNIL                          R5
       79 NEWCLOSURE                       R5 P1
       80 CAPTURE                          REF R5
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 LOADNIL                          R6
       84 DUPCLOSURE                       R7 K25 [PROTO_2]
       85 NEWTABLE                         R8 16 0
       87 DUPCLOSURE                       R9 K26 [PROTO_3]
       88 SETTABLEKS                       R9 R8 K18 ["+"]
       90 DUPCLOSURE                       R9 K27 [PROTO_4]
       91 SETTABLEKS                       R9 R8 K19 ["-"]
       93 DUPCLOSURE                       R9 K28 [PROTO_5]
       94 SETTABLEKS                       R9 R8 K20 ["*"]
       96 DUPCLOSURE                       R9 K29 [PROTO_6]
       97 SETTABLEKS                       R9 R8 K21 ["/"]
       99 DUPCLOSURE                       R9 K30 [PROTO_7]
      100 SETTABLEKS                       R9 R8 K22 ["%"]
      102 DUPCLOSURE                       R9 K31 [PROTO_8]
      103 SETTABLEKS                       R9 R8 K23 ["^"]
      105 DUPCLOSURE                       R9 K32 [PROTO_9]
      106 SETTABLEKS                       R9 R8 K17 [".."]
      108 DUPCLOSURE                       R9 K33 [PROTO_10]
      109 SETTABLEKS                       R9 R8 K11 ["=="]
      111 DUPCLOSURE                       R9 K34 [PROTO_11]
      112 SETTABLEKS                       R9 R8 K12 ["~="]
      114 DUPCLOSURE                       R9 K35 [PROTO_12]
      115 SETTABLEKS                       R9 R8 K13 ["<"]
      117 DUPCLOSURE                       R9 K36 [PROTO_13]
      118 SETTABLEKS                       R9 R8 K14 [">"]
      120 DUPCLOSURE                       R9 K37 [PROTO_14]
      121 SETTABLEKS                       R9 R8 K15 ["<="]
      123 DUPCLOSURE                       R9 K38 [PROTO_15]
      124 SETTABLEKS                       R9 R8 K16 [">="]
      126 DUPCLOSURE                       R9 K39 [PROTO_16]
      127 DUPTABLE                         R10 K57 [{"NumberLiteral", "StringLiteral", "BooleanLiteral", "NilLiteral", "Id", "MemberAccess", "IndexAccess", "Call", "UnaryExpr", "BinaryExpr", "TernaryExpr", "Fn", "ParenExpr", "TemplateString", "TableLiteral", "Variable", "VarArgs"}]
      128 DUPCLOSURE                       R11 K58 [PROTO_17]
      129 SETTABLEKS                       R11 R10 K40 ["NumberLiteral"]
      131 DUPCLOSURE                       R11 K59 [PROTO_18]
      132 SETTABLEKS                       R11 R10 K41 ["StringLiteral"]
      134 DUPCLOSURE                       R11 K60 [PROTO_19]
      135 SETTABLEKS                       R11 R10 K42 ["BooleanLiteral"]
      137 DUPCLOSURE                       R11 K61 [PROTO_20]
      138 SETTABLEKS                       R11 R10 K43 ["NilLiteral"]
      140 DUPCLOSURE                       R11 K62 [PROTO_21]
      141 CAPTURE                          VAL R9
      142 SETTABLEKS                       R11 R10 K44 ["Id"]
      144 NEWCLOSURE                       R11 P22
      145 CAPTURE                          REF R6
      146 SETTABLEKS                       R11 R10 K45 ["MemberAccess"]
      148 NEWCLOSURE                       R11 P23
      149 CAPTURE                          REF R6
      150 SETTABLEKS                       R11 R10 K46 ["IndexAccess"]
      152 NEWCLOSURE                       R11 P24
      153 CAPTURE                          REF R6
      154 SETTABLEKS                       R11 R10 K47 ["Call"]
      156 NEWCLOSURE                       R11 P25
      157 CAPTURE                          REF R6
      158 SETTABLEKS                       R11 R10 K48 ["UnaryExpr"]
      160 NEWCLOSURE                       R11 P26
      161 CAPTURE                          REF R6
      162 CAPTURE                          VAL R8
      163 SETTABLEKS                       R11 R10 K49 ["BinaryExpr"]
      165 NEWCLOSURE                       R11 P27
      166 CAPTURE                          REF R6
      167 SETTABLEKS                       R11 R10 K50 ["TernaryExpr"]
      169 NEWCLOSURE                       R11 P28
      170 CAPTURE                          REF R6
      171 SETTABLEKS                       R11 R10 K51 ["Fn"]
      173 NEWCLOSURE                       R11 P29
      174 CAPTURE                          REF R6
      175 SETTABLEKS                       R11 R10 K52 ["ParenExpr"]
      177 NEWCLOSURE                       R11 P30
      178 CAPTURE                          REF R6
      179 SETTABLEKS                       R11 R10 K53 ["TemplateString"]
      181 NEWCLOSURE                       R11 P31
      182 CAPTURE                          REF R6
      183 SETTABLEKS                       R11 R10 K54 ["TableLiteral"]
      185 DUPCLOSURE                       R11 K63 [PROTO_33]
      186 SETTABLEKS                       R11 R10 K55 ["Variable"]
      188 DUPCLOSURE                       R11 K64 [PROTO_34]
      189 SETTABLEKS                       R11 R10 K56 ["VarArgs"]
      191 DUPCLOSURE                       R6 K65 [PROTO_35]
      192 CAPTURE                          VAL R10
      193 NEWCLOSURE                       R11 P35
      194 CAPTURE                          REF R5
      195 CAPTURE                          VAL R1
      196 CAPTURE                          REF R6
      197 CLOSEUPVALS                      R5
      198 RETURN                           R11 1
