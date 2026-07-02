PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R2 ; [+3]
        2 MOVE                             R4 R2
        3 JUMP                             ; [+1]
        4 LOADN                            R4 -1
        5 FASTCALL1                        TYPEOF R4 ; [+3]
        6 MOVE                             R7 R4
        7 GETIMPORT                        R6 K1 [typeof]
        9 CALL                             R6 1 1
       10 JUMPIFNOTEQKS                    R6 K2 ["number"] ; [+3]
       12 MOVE                             R5 R3
       13 JUMP                             ; [+1]
       14 MOVE                             R5 R4
       15 FASTCALL1                        TYPEOF R4 ; [+3]
       16 MOVE                             R8 R4
       17 GETIMPORT                        R7 K1 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K2 ["number"] ; [+3]
       22 MOVE                             R6 R4
       23 JUMP                             ; [+1]
       24 LOADN                            R6 -1
       25 JUMPIFNOTEQKN                    R6 K3 [0] ; [+3]
       27 LOADB                            R7 1
       28 RETURN                           R7 1
       29 JUMPIFNOTEQ                      R0 R1 ; [+3]
       31 LOADB                            R7 0
       32 RETURN                           R7 1
       33 FASTCALL1                        TYPEOF R0 ; [+3]
       34 MOVE                             R8 R0
       35 GETIMPORT                        R7 K1 [typeof]
       37 CALL                             R7 1 1
       38 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+62]
       40 FASTCALL1                        TYPEOF R1 ; [+3]
       41 MOVE                             R8 R1
       42 GETIMPORT                        R7 K1 [typeof]
       44 CALL                             R7 1 1
       45 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+55]
       47 JUMPIFNOTEQKNIL                  R5 ; [+3]
       49 LOADB                            R7 0
       50 JUMP                             ; [+6]
       51 GETTABLEKS                       R8 R5 K5 ["unsafelyIgnoreFunctions"]
       53 JUMPIFNOTEQKNIL                  R8 ; [+2]
       55 LOADB                            R7 0 +1
       56 LOADB                            R7 1
       57 JUMPIFEQKNIL                     R5 ; [+5]
       59 JUMPIFNOT                        R7 ; [+3]
       60 GETTABLEKS                       R8 R5 K5 ["unsafelyIgnoreFunctions"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R8
       64 JUMPIFNOTEQKNIL                  R8 ; [+34]
       66 GETUPVAL                         R9 0
       67 JUMPIFEQKNIL                     R9 ; [+30]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K6 ["toJSBoolean"]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K7 ["onDifferentFunctionsIgnored"]
       75 CALL                             R9 1 1
       76 JUMPIFNOT                        R9 ; [+21]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K6 ["toJSBoolean"]
       80 MOVE                             R10 R5
       81 CALL                             R9 1 1
       82 JUMPIFNOT                        R9 ; [+1]
       83 JUMPIF                           R7 ; [+14]
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R9 R9 K7 ["onDifferentFunctionsIgnored"]
       87 GETIMPORT                        R10 K10 [debug.info]
       89 MOVE                             R11 R0
       90 LOADK                            R12 K11 ["n"]
       91 CALL                             R10 2 1
       92 GETIMPORT                        R11 K10 [debug.info]
       94 MOVE                             R12 R1
       95 LOADK                            R13 K11 ["n"]
       96 CALL                             R11 2 -1
       97 CALL                             R9 -1 0
       98 LOADB                            R8 1
       99 NOT                              R9 R8
      100 RETURN                           R9 1
      101 FASTCALL1                        TYPEOF R0 ; [+3]
      102 MOVE                             R8 R0
      103 GETIMPORT                        R7 K1 [typeof]
      105 CALL                             R7 1 1
      106 JUMPIFNOTEQKS                    R7 K12 ["table"] ; [+3]
      108 JUMPIFNOTEQKNIL                  R0 ; [+6]
      110 JUMPIFNOTEQ                      R0 R1 ; [+2]
      112 LOADB                            R7 0 +1
      113 LOADB                            R7 1
      114 RETURN                           R7 1
      115 FASTCALL1                        TYPEOF R1 ; [+3]
      116 MOVE                             R8 R1
      117 GETIMPORT                        R7 K1 [typeof]
      119 CALL                             R7 1 1
      120 JUMPIFNOTEQKS                    R7 K12 ["table"] ; [+3]
      122 JUMPIFNOTEQKNIL                  R1 ; [+3]
      124 LOADB                            R7 1
      125 RETURN                           R7 1
      126 GETUPVAL                         R7 2
      127 GETTABLEKS                       R7 R7 K13 ["isArray"]
      129 MOVE                             R8 R0
      130 CALL                             R7 1 1
      131 GETUPVAL                         R8 2
      132 GETTABLEKS                       R8 R8 K13 ["isArray"]
      134 MOVE                             R9 R1
      135 CALL                             R8 1 1
      136 JUMPIFEQ                         R7 R8 ; [+3]
      138 LOADB                            R7 1
      139 RETURN                           R7 1
      140 GETUPVAL                         R7 2
      141 GETTABLEKS                       R7 R7 K13 ["isArray"]
      143 MOVE                             R8 R0
      144 CALL                             R7 1 1
      145 JUMPIFNOT                        R7 ; [+21]
      146 LENGTH                           R7 R1
      147 LENGTH                           R8 R0
      148 JUMPIFEQ                         R7 R8 ; [+3]
      150 LOADB                            R7 1
      151 RETURN                           R7 1
      152 LOADN                            R9 1
      153 LENGTH                           R7 R0
      154 LOADN                            R8 1
      155 FORNPREP                         R7
      156 GETUPVAL                         R10 3
      157 GETTABLE                         R11 R0 R9
      158 GETTABLE                         R12 R1 R9
      159 SUBK                             R13 R6 K14 [1]
      160 MOVE                             R14 R5
      161 CALL                             R10 4 1
      162 JUMPIFNOT                        R10 ; [+2]
      163 LOADB                            R10 1
      164 RETURN                           R10 1
      165 FORNLOOP                         R7
      166 JUMP                             ; [+31]
      167 GETIMPORT                        R7 K16 [pairs]
      169 MOVE                             R8 R0
      170 CALL                             R7 1 3
      171 FORGPREP_NEXT                    R7
      172 GETUPVAL                         R12 3
      173 GETTABLE                         R13 R0 R10
      174 GETTABLE                         R14 R1 R10
      175 SUBK                             R15 R6 K14 [1]
      176 MOVE                             R16 R5
      177 CALL                             R12 4 1
      178 JUMPIFNOT                        R12 ; [+2]
      179 LOADB                            R12 1
      180 RETURN                           R12 1
      181 FORGLOOP                         R7 1 ; [-10]
      183 GETIMPORT                        R7 K16 [pairs]
      185 MOVE                             R8 R1
      186 CALL                             R7 1 3
      187 FORGPREP_NEXT                    R7
      188 GETTABLE                         R12 R0 R10
      189 JUMPIFNOTEQKNIL                  R12 ; [+6]
      191 GETTABLE                         R12 R1 R10
      192 JUMPIFEQKNIL                     R12 ; [+3]
      194 LOADB                            R12 1
      195 RETURN                           R12 1
      196 FORGLOOP                         R7 1 ; [-9]
      198 LOADB                            R7 0
      199 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 CALL                             R5 4 1
        6 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Array"]
       18 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       20 LOADNIL                          R5
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          REF R5
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          REF R5
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R7
       28 DUPTABLE                         R9 K9 [{"unstable_setLogListeners"}]
       29 SETTABLEKS                       R6 R9 K8 ["unstable_setLogListeners"]
       31 DUPTABLE                         R10 K11 [{"__call"}]
       32 DUPCLOSURE                       R11 K12 [PROTO_2]
       33 CAPTURE                          VAL R7
       34 SETTABLEKS                       R11 R10 K10 ["__call"]
       36 FASTCALL2                        SETMETATABLE R9 R10 ; [+3]
       38 GETIMPORT                        R8 K14 [setmetatable]
       40 CALL                             R8 2 1
       41 CLOSEUPVALS                      R5
       42 RETURN                           R8 1
