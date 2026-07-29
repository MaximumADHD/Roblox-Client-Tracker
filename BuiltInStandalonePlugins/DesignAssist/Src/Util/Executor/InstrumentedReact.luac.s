PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADB                            R1 1
        4 GETUPVAL                         R2 0
        5 JUMPIFEQ                         R0 R2 ; [+26]
        7 LOADB                            R1 1
        8 GETUPVAL                         R2 1
        9 JUMPIFEQ                         R0 R2 ; [+22]
       11 LOADB                            R1 1
       12 GETIMPORT                        R2 K2 [string.find]
       14 MOVE                             R3 R0
       15 GETUPVAL                         R4 0
       16 LOADN                            R5 1
       17 LOADB                            R6 1
       18 CALL                             R2 4 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+12]
       21 GETIMPORT                        R2 K2 [string.find]
       23 MOVE                             R3 R0
       24 LOADK                            R4 K3 ["DesignAssistStory_"]
       25 LOADN                            R5 1
       26 LOADB                            R6 1
       27 CALL                             R2 4 1
       28 JUMPIFNOTEQKNIL                  R2 ; [+2]
       30 LOADB                            R1 0 +1
       31 LOADB                            R1 1
       32 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R1 1
        7 JUMPIF                           R0 ; [+2]
        8 LOADB                            R1 0
        9 JUMP                             ; [+29]
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 1
       12 JUMPIFEQ                         R0 R2 ; [+26]
       14 LOADB                            R1 1
       15 GETUPVAL                         R2 2
       16 JUMPIFEQ                         R0 R2 ; [+22]
       18 LOADB                            R1 1
       19 GETIMPORT                        R2 K2 [string.find]
       21 MOVE                             R3 R0
       22 GETUPVAL                         R4 1
       23 LOADN                            R5 1
       24 LOADB                            R6 1
       25 CALL                             R2 4 1
       26 JUMPIFNOTEQKNIL                  R2 ; [+12]
       28 GETIMPORT                        R2 K2 [string.find]
       30 MOVE                             R3 R0
       31 LOADK                            R4 K3 ["DesignAssistStory_"]
       32 LOADN                            R5 1
       33 LOADB                            R6 1
       34 CALL                             R2 4 1
       35 JUMPIFNOTEQKNIL                  R2 ; [+2]
       37 LOADB                            R1 0 +1
       38 LOADB                            R1 1
       39 JUMPIFNOT                        R1 ; [+2]
       40 DUPTABLE                         R1 K6 [{["sourceId"] = }]
       41 RETURN                           R1 1
       42 LOADNIL                          R1
       43 RETURN                           R1 1

PROTO_2:
        0 PREPVARARGS                      2
        1 GETIMPORT                        R2 K2 [debug.info]
        3 LOADN                            R3 2
        4 LOADK                            R4 K3 ["sl"]
        5 CALL                             R2 2 2
        6 GETUPVAL                         R5 0
        7 JUMPIFNOT                        R5 ; [+6]
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R2
       10 CALL                             R5 1 1
       11 JUMPIFNOT                        R5 ; [+2]
       12 MOVE                             R4 R5
       13 JUMP                             ; [+36]
       14 JUMPIF                           R2 ; [+2]
       15 LOADB                            R5 0
       16 JUMP                             ; [+29]
       17 LOADB                            R5 1
       18 GETUPVAL                         R6 1
       19 JUMPIFEQ                         R2 R6 ; [+26]
       21 LOADB                            R5 1
       22 GETUPVAL                         R6 2
       23 JUMPIFEQ                         R2 R6 ; [+22]
       25 LOADB                            R5 1
       26 GETIMPORT                        R6 K6 [string.find]
       28 MOVE                             R7 R2
       29 GETUPVAL                         R8 1
       30 LOADN                            R9 1
       31 LOADB                            R10 1
       32 CALL                             R6 4 1
       33 JUMPIFNOTEQKNIL                  R6 ; [+12]
       35 GETIMPORT                        R6 K6 [string.find]
       37 MOVE                             R7 R2
       38 LOADK                            R8 K7 ["DesignAssistStory_"]
       39 LOADN                            R9 1
       40 LOADB                            R10 1
       41 CALL                             R6 4 1
       42 JUMPIFNOTEQKNIL                  R6 ; [+2]
       44 LOADB                            R5 0 +1
       45 LOADB                            R5 1
       46 JUMPIFNOT                        R5 ; [+2]
       47 DUPTABLE                         R4 K10 [{["sourceId"] = }]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R4
       50 JUMPIFNOT                        R4 ; [+184]
       51 GETTABLEKS                       R5 R4 K8 ["sourceId"]
       53 GETUPVAL                         R6 3
       54 ADDK                             R6 R6 K11 [1]
       55 SETUPVAL                         R6 3
       56 MOVE                             R13 R5
       57 JUMPIF                           R13 ; [+1]
       58 GETUPVAL                         R13 1
       59 FASTCALL1                        TOSTRING R13 ; [+2]
       60 GETIMPORT                        R12 K13 [tostring]
       62 CALL                             R12 1 1
       63 MOVE                             R7 R12
       64 LOADK                            R8 K14 [":"]
       65 FASTCALL1                        TOSTRING R3 ; [+3]
       66 MOVE                             R13 R3
       67 GETIMPORT                        R12 K13 [tostring]
       69 CALL                             R12 1 1
       70 MOVE                             R9 R12
       71 LOADK                            R10 K14 [":"]
       72 GETUPVAL                         R12 3
       73 FASTCALL1                        TOSTRING R12 ; [+2]
       74 GETIMPORT                        R11 K13 [tostring]
       76 CALL                             R11 1 1
       77 CONCAT                           R6 R7 R11
       78 FASTCALL1                        TYPE R0 ; [+3]
       79 MOVE                             R8 R0
       80 GETIMPORT                        R7 K16 [type]
       82 CALL                             R7 1 1
       83 JUMPIFNOTEQKS                    R7 K17 ["function"] ; [+79]
       85 GETIMPORT                        R7 K2 [debug.info]
       87 MOVE                             R8 R0
       88 LOADK                            R9 K18 ["s"]
       89 CALL                             R7 2 1
       90 GETUPVAL                         R9 0
       91 JUMPIFNOT                        R9 ; [+6]
       92 GETUPVAL                         R9 0
       93 MOVE                             R10 R7
       94 CALL                             R9 1 1
       95 JUMPIFNOT                        R9 ; [+2]
       96 MOVE                             R8 R9
       97 JUMP                             ; [+36]
       98 JUMPIF                           R7 ; [+2]
       99 LOADB                            R9 0
      100 JUMP                             ; [+29]
      101 LOADB                            R9 1
      102 GETUPVAL                         R10 1
      103 JUMPIFEQ                         R7 R10 ; [+26]
      105 LOADB                            R9 1
      106 GETUPVAL                         R10 2
      107 JUMPIFEQ                         R7 R10 ; [+22]
      109 LOADB                            R9 1
      110 GETIMPORT                        R10 K6 [string.find]
      112 MOVE                             R11 R7
      113 GETUPVAL                         R12 1
      114 LOADN                            R13 1
      115 LOADB                            R14 1
      116 CALL                             R10 4 1
      117 JUMPIFNOTEQKNIL                  R10 ; [+12]
      119 GETIMPORT                        R10 K6 [string.find]
      121 MOVE                             R11 R7
      122 LOADK                            R12 K7 ["DesignAssistStory_"]
      123 LOADN                            R13 1
      124 LOADB                            R14 1
      125 CALL                             R10 4 1
      126 JUMPIFNOTEQKNIL                  R10 ; [+2]
      128 LOADB                            R9 0 +1
      129 LOADB                            R9 1
      130 JUMPIFNOT                        R9 ; [+2]
      131 DUPTABLE                         R8 K10 [{["sourceId"] = }]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R8
      134 JUMPIFNOT                        R8 ; [+28]
      135 GETIMPORT                        R9 K2 [debug.info]
      137 MOVE                             R10 R0
      138 LOADK                            R11 K19 ["n"]
      139 CALL                             R9 2 1
      140 JUMPIFNOT                        R9 ; [+22]
      141 JUMPIFEQKS                       R9 K20 [""] ; [+21]
      143 GETTABLEKS                       R15 R8 K8 ["sourceId"]
      145 JUMPIF                           R15 ; [+1]
      146 GETUPVAL                         R15 1
      147 FASTCALL1                        TOSTRING R15 ; [+2]
      148 GETIMPORT                        R14 K13 [tostring]
      150 CALL                             R14 1 1
      151 MOVE                             R11 R14
      152 LOADK                            R12 K14 [":"]
      153 MOVE                             R13 R9
      154 CONCAT                           R10 R11 R13
      155 GETUPVAL                         R11 4
      156 GETTABLEKS                       R11 R11 K21 ["getOrCreate"]
      158 MOVE                             R12 R10
      159 MOVE                             R13 R0
      160 MOVE                             R14 R9
      161 CALL                             R11 3 1
      162 MOVE                             R0 R11
      163 FASTCALL1                        TYPE R0 ; [+3]
      164 MOVE                             R8 R0
      165 GETIMPORT                        R7 K16 [type]
      167 CALL                             R7 1 1
      168 JUMPIFEQKS                       R7 K4 ["string"] ; [+22]
      170 FASTCALL1                        TYPE R1 ; [+3]
      171 MOVE                             R9 R1
      172 GETIMPORT                        R8 K16 [type]
      174 CALL                             R8 1 1
      175 JUMPIFNOTEQKS                    R8 K22 ["table"] ; [+6]
      177 GETIMPORT                        R7 K24 [table.clone]
      179 MOVE                             R8 R1
      180 CALL                             R7 1 1
      181 JUMP                             ; [+2]
      182 NEWTABLE                         R7 0 0
      184 SETTABLEKS                       R3 R7 K25 ["__sourceLine"]
      186 SETTABLEKS                       R6 R7 K26 ["__designAssistId"]
      188 SETTABLEKS                       R5 R7 K27 ["__sourceId"]
      190 MOVE                             R1 R7
      191 LOADNIL                          R7
      192 FASTCALL1                        TYPE R1 ; [+3]
      193 MOVE                             R9 R1
      194 GETIMPORT                        R8 K16 [type]
      196 CALL                             R8 1 1
      197 JUMPIFNOTEQKS                    R8 K22 ["table"] ; [+11]
      199 GETTABLEKS                       R9 R1 K28 ["key"]
      201 FASTCALL1                        TYPE R9 ; [+2]
      202 GETIMPORT                        R8 K16 [type]
      204 CALL                             R8 1 1
      205 JUMPIFNOTEQKS                    R8 K4 ["string"] ; [+3]
      207 GETTABLEKS                       R7 R1 K28 ["key"]
      209 LOADNIL                          R8
      210 FASTCALL1                        TYPE R0 ; [+3]
      211 MOVE                             R10 R0
      212 GETIMPORT                        R9 K16 [type]
      214 CALL                             R9 1 1
      215 JUMPIFNOTEQKS                    R9 K4 ["string"] ; [+3]
      217 MOVE                             R8 R0
      218 JUMP                             ; [+6]
      219 FASTCALL1                        TOSTRING R0 ; [+3]
      220 MOVE                             R10 R0
      221 GETIMPORT                        R9 K13 [tostring]
      223 CALL                             R9 1 1
      224 MOVE                             R8 R9
      225 GETUPVAL                         R9 5
      226 MOVE                             R11 R3
      227 MOVE                             R12 R0
      228 MOVE                             R13 R7
      229 MOVE                             R14 R8
      230 MOVE                             R15 R6
      231 MOVE                             R16 R5
      232 NAMECALL                         R9 R9 K29 ["addEntry"]
      234 CALL                             R9 7 0
      235 GETUPVAL                         R5 6
      236 MOVE                             R6 R0
      237 MOVE                             R7 R1
      238 GETVARARGS                       R8 -1
      239 CALL                             R5 -1 -1
      240 RETURN                           R5 -1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["createElement"]
        2 LOADK                            R6 K1 ["[string \""]
        3 MOVE                             R7 R2
        4 LOADK                            R8 K2 ["\"]"]
        5 CONCAT                           R5 R6 R8
        6 LOADN                            R6 0
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R5
       10 NEWCLOSURE                       R8 P1
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R5
       14 DUPTABLE                         R10 K4 [{"__designAssistReactIdentity", "createElement"}]
       15 SETTABLEKS                       R0 R10 K3 ["__designAssistReactIdentity"]
       17 NEWCLOSURE                       R11 P2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R5
       21 CAPTURE                          REF R6
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R4
       25 SETTABLEKS                       R11 R10 K0 ["createElement"]
       27 DUPTABLE                         R11 K6 [{"__index"}]
       28 SETTABLEKS                       R0 R11 K5 ["__index"]
       30 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
       32 GETIMPORT                        R9 K8 [setmetatable]
       34 CALL                             R9 2 1
       35 CLOSEUPVALS                      R6
       36 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["InstrumentedReact must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Src"]
       18 GETTABLEKS                       R2 R2 K10 ["Util"]
       20 GETTABLEKS                       R2 R2 K11 ["SourceMap"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K8 [require]
       25 GETIMPORT                        R3 K1 [script]
       27 GETTABLEKS                       R3 R3 K12 ["Parent"]
       29 GETTABLEKS                       R3 R3 K13 ["StableWrappers"]
       31 CALL                             R2 1 1
       32 NEWTABLE                         R3 1 0
       34 DUPCLOSURE                       R4 K14 [PROTO_3]
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R4 R3 K15 ["create"]
       38 RETURN                           R3 1
