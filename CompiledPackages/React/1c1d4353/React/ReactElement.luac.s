PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+19]
        2 GETTABLEKS                       R1 R0 K0 ["ref"]
        4 JUMPIFEQKNIL                     R1 ; [+16]
        6 GETTABLEKS                       R2 R0 K0 ["ref"]
        8 FASTCALL1                        TYPE R2 ; [+2]
        9 GETIMPORT                        R1 K2 [type]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+8]
       14 GETTABLEKS                       R1 R0 K0 ["ref"]
       16 GETTABLEKS                       R1 R1 K4 ["isReactWarning"]
       18 JUMPIFNOT                        R1 ; [+2]
       19 LOADB                            R1 0
       20 RETURN                           R1 1
       21 GETTABLEKS                       R2 R0 K0 ["ref"]
       23 JUMPIFNOTEQKNIL                  R2 ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+19]
        2 GETTABLEKS                       R1 R0 K0 ["key"]
        4 JUMPIFEQKNIL                     R1 ; [+16]
        6 GETTABLEKS                       R2 R0 K0 ["key"]
        8 FASTCALL1                        TYPE R2 ; [+2]
        9 GETIMPORT                        R1 K2 [type]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+8]
       14 GETTABLEKS                       R1 R0 K0 ["key"]
       16 GETTABLEKS                       R1 R1 K4 ["isReactWarning"]
       18 JUMPIFNOT                        R1 ; [+2]
       19 LOADB                            R1 0
       20 RETURN                           R1 1
       21 GETTABLEKS                       R2 R0 K0 ["key"]
       23 JUMPIFNOTEQKNIL                  R2 ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+8]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["error"]
        9 LOADK                            R1 K1 ["%s: `key` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)"]
       10 GETUPVAL                         R2 3
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R1 K0 ["key"] ; [+15]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETUPVAL                         R2 1
        5 JUMPIF                           R2 ; [+8]
        6 LOADB                            R2 1
        7 SETUPVAL                         R2 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["error"]
       11 LOADK                            R3 K2 ["%s: `key` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)"]
       12 GETUPVAL                         R4 3
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 4
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R0 K0 ["key"]
        8 DUPTABLE                         R5 K2 [{"__index"}]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R6 R5 K1 ["__index"]
       17 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       19 MOVE                             R4 R0
       20 GETIMPORT                        R3 K4 [setmetatable]
       22 CALL                             R3 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+8]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["error"]
        9 LOADK                            R1 K1 ["%s: `ref` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)"]
       10 GETUPVAL                         R2 3
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R1 K0 ["ref"] ; [+15]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETUPVAL                         R2 1
        5 JUMPIF                           R2 ; [+8]
        6 LOADB                            R2 1
        7 SETUPVAL                         R2 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["error"]
       11 LOADK                            R3 K2 ["%s: `ref` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)"]
       12 GETUPVAL                         R4 3
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 4
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R0 K0 ["ref"]
        8 DUPTABLE                         R5 K2 [{"__index"}]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R6 R5 K1 ["__index"]
       17 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       19 MOVE                             R4 R0
       20 GETIMPORT                        R3 K4 [setmetatable]
       22 CALL                             R3 2 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+32]
        2 GETTABLEKS                       R2 R0 K0 ["ref"]
        4 FASTCALL1                        TYPE R2 ; [+2]
        5 GETIMPORT                        R1 K2 [type]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+25]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["current"]
       13 JUMPIFNOT                        R1 ; [+20]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K4 ["current"]
       18 GETTABLEKS                       R2 R2 K1 ["type"]
       20 CALL                             R1 1 1
       21 GETUPVAL                         R3 3
       22 GETTABLE                         R2 R3 R1
       23 JUMPIF                           R2 ; [+10]
       24 GETIMPORT                        R2 K6 [error]
       26 GETIMPORT                        R3 K8 [string.format]
       28 LOADK                            R4 K9 ["Component \"%s\" contains the string ref \"%s\". Support for string refs has been removed. We recommend using useRef() or createRef() instead. Learn more about using refs safely here: https://reactjs.org/link/strict-mode-string-ref"]
       29 ORK                              R5 R1 K10 ["Unknown"]
       30 GETTABLEKS                       R6 R0 K0 ["ref"]
       32 CALL                             R3 3 -1
       33 CALL                             R2 -1 0
       34 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKS                    R1 K0 ["validated"] ; [+5]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K0 ["validated"]
        5 RETURN                           R0 0
        6 FASTCALL3                        RAWSET R0 R1 R2
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 GETIMPORT                        R3 K2 [rawset]
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R7 K5 [{"type", "key", "ref", "props", "_owner"}]
        1 SETTABLEKS                       R0 R7 K0 ["type"]
        3 SETTABLEKS                       R1 R7 K1 ["key"]
        5 SETTABLEKS                       R2 R7 K2 ["ref"]
        7 SETTABLEKS                       R6 R7 K3 ["props"]
        9 SETTABLEKS                       R5 R7 K4 ["_owner"]
       11 GETUPVAL                         R8 0
       12 SETTABLEKS                       R8 R7 K6 ["$$typeof"]
       14 GETUPVAL                         R8 1
       15 JUMPIFNOT                        R8 ; [+31]
       16 DUPTABLE                         R8 K9 [{["validated"] = False}]
       17 NEWTABLE                         R10 0 0
       19 DUPTABLE                         R11 K12 [{"__index", "__newindex"}]
       20 SETTABLEKS                       R8 R11 K10 ["__index"]
       22 NEWCLOSURE                       R12 P0
       23 CAPTURE                          VAL R8
       24 SETTABLEKS                       R12 R11 K11 ["__newindex"]
       26 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
       28 GETIMPORT                        R9 K14 [setmetatable]
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R7 K15 ["_store"]
       33 DUPTABLE                         R11 K16 [{"__index"}]
       34 DUPTABLE                         R12 K19 [{"_self", "_source"}]
       35 SETTABLEKS                       R3 R12 K17 ["_self"]
       37 SETTABLEKS                       R4 R12 K18 ["_source"]
       39 SETTABLEKS                       R12 R11 K10 ["__index"]
       41 FASTCALL2                        SETMETATABLE R7 R11 ; [+4]
       43 MOVE                             R10 R7
       44 GETIMPORT                        R9 K14 [setmetatable]
       46 CALL                             R9 2 0
       47 RETURN                           R7 1

PROTO_11:
        0 GETIMPORT                        R3 K1 [error]
        2 LOADK                            R4 K2 ["JSX is currently unsupported"]
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R5 K1 [error]
        2 LOADK                            R6 K2 ["JSX is currently unsupported"]
        3 CALL                             R5 1 0
        4 LOADNIL                          R5
        5 RETURN                           R5 1

PROTO_13:
        0 PREPVARARGS                      2
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETIMPORT                        R2 K2 [table.clone]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R2 0 0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 JUMPIFEQKNIL                     R1 ; [+117]
       15 GETUPVAL                         R7 0
       16 JUMPIFNOT                        R7 ; [+19]
       17 GETTABLEKS                       R7 R1 K3 ["ref"]
       19 JUMPIFEQKNIL                     R7 ; [+16]
       21 GETTABLEKS                       R8 R1 K3 ["ref"]
       23 FASTCALL1                        TYPE R8 ; [+2]
       24 GETIMPORT                        R7 K5 [type]
       26 CALL                             R7 1 1
       27 JUMPIFNOTEQKS                    R7 K0 ["table"] ; [+8]
       29 GETTABLEKS                       R7 R1 K3 ["ref"]
       31 GETTABLEKS                       R7 R7 K6 ["isReactWarning"]
       33 JUMPIFNOT                        R7 ; [+2]
       34 LOADB                            R6 0
       35 JUMP                             ; [+6]
       36 GETTABLEKS                       R7 R1 K3 ["ref"]
       38 JUMPIFNOTEQKNIL                  R7 ; [+2]
       40 LOADB                            R6 0 +1
       41 LOADB                            R6 1
       42 JUMPIFNOT                        R6 ; [+7]
       43 GETTABLEKS                       R4 R1 K3 ["ref"]
       45 GETUPVAL                         R6 0
       46 JUMPIFNOT                        R6 ; [+3]
       47 GETUPVAL                         R6 1
       48 MOVE                             R7 R1
       49 CALL                             R6 1 0
       50 GETUPVAL                         R7 0
       51 JUMPIFNOT                        R7 ; [+19]
       52 GETTABLEKS                       R7 R1 K7 ["key"]
       54 JUMPIFEQKNIL                     R7 ; [+16]
       56 GETTABLEKS                       R8 R1 K7 ["key"]
       58 FASTCALL1                        TYPE R8 ; [+2]
       59 GETIMPORT                        R7 K5 [type]
       61 CALL                             R7 1 1
       62 JUMPIFNOTEQKS                    R7 K0 ["table"] ; [+8]
       64 GETTABLEKS                       R7 R1 K7 ["key"]
       66 GETTABLEKS                       R7 R7 K6 ["isReactWarning"]
       68 JUMPIFNOT                        R7 ; [+2]
       69 LOADB                            R6 0
       70 JUMP                             ; [+6]
       71 GETTABLEKS                       R7 R1 K7 ["key"]
       73 JUMPIFNOTEQKNIL                  R7 ; [+2]
       75 LOADB                            R6 0 +1
       76 LOADB                            R6 1
       77 JUMPIFNOT                        R6 ; [+17]
       78 GETTABLEKS                       R6 R1 K7 ["key"]
       80 FASTCALL1                        TYPE R6 ; [+3]
       81 MOVE                             R8 R6
       82 GETIMPORT                        R7 K5 [type]
       84 CALL                             R7 1 1
       85 JUMPIFNOTEQKS                    R7 K8 ["number"] ; [+3]
       87 MOVE                             R3 R6
       88 JUMP                             ; [+6]
       89 FASTCALL1                        TOSTRING R6 ; [+3]
       90 MOVE                             R8 R6
       91 GETIMPORT                        R7 K10 [tostring]
       93 CALL                             R7 1 1
       94 MOVE                             R3 R7
       95 GETTABLEKS                       R6 R1 K11 ["__source"]
       97 JUMPIFNOTEQKNIL                  R6 ; [+3]
       99 LOADNIL                          R5
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R5 R1 K11 ["__source"]
      103 GETTABLEKS                       R6 R2 K7 ["key"]
      105 JUMPIFEQKNIL                     R6 ; [+4]
      107 LOADNIL                          R6
      108 SETTABLEKS                       R6 R2 K7 ["key"]
      110 GETTABLEKS                       R6 R2 K3 ["ref"]
      112 JUMPIFEQKNIL                     R6 ; [+4]
      114 LOADNIL                          R6
      115 SETTABLEKS                       R6 R2 K3 ["ref"]
      117 GETTABLEKS                       R6 R2 K12 ["__self"]
      119 JUMPIFEQKNIL                     R6 ; [+4]
      121 LOADNIL                          R6
      122 SETTABLEKS                       R6 R2 K12 ["__self"]
      124 GETTABLEKS                       R6 R2 K11 ["__source"]
      126 JUMPIFEQKNIL                     R6 ; [+4]
      128 LOADNIL                          R6
      129 SETTABLEKS                       R6 R2 K11 ["__source"]
      131 LOADK                            R7 K13 ["#"]
      132 FASTCALL1                        SELECT_VARARG R7 ; [+3]
      133 GETIMPORT                        R6 K15 [select]
      135 GETVARARGS                       R8 -1
      136 CALL                             R6 -1 1
      137 JUMPIFNOTEQKN                    R6 K16 [1] ; [+10]
      139 LOADN                            R8 1
      140 FASTCALL1                        SELECT_VARARG R8 ; [+3]
      141 GETIMPORT                        R7 K15 [select]
      143 GETVARARGS                       R9 -1
      144 CALL                             R7 -1 1
      145 SETTABLEKS                       R7 R2 K17 ["children"]
      147 JUMP                             ; [+33]
      148 LOADN                            R7 1
      149 JUMPIFNOTLT                      R7 R6 ; [+31]
      151 GETIMPORT                        R7 K19 [table.create]
      153 MOVE                             R8 R6
      154 CALL                             R7 1 1
      155 LOADN                            R10 1
      156 MOVE                             R8 R6
      157 LOADN                            R9 1
      158 FORNPREP                         R8
      159 FASTCALL1                        SELECT_VARARG R10 ; [+4]
      160 GETIMPORT                        R11 K15 [select]
      162 MOVE                             R12 R10
      163 GETVARARGS                       R13 -1
      164 CALL                             R11 -1 1
      165 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
      167 MOVE                             R13 R7
      168 MOVE                             R14 R11
      169 GETIMPORT                        R12 K21 [table.insert]
      171 CALL                             R12 2 0
      172 FORNLOOP                         R8
      173 GETUPVAL                         R8 0
      174 JUMPIFNOT                        R8 ; [+4]
      175 GETIMPORT                        R8 K23 [table.freeze]
      177 MOVE                             R9 R7
      178 CALL                             R8 1 0
      179 SETTABLEKS                       R7 R2 K17 ["children"]
      181 FASTCALL1                        TYPE R0 ; [+3]
      182 MOVE                             R8 R0
      183 GETIMPORT                        R7 K5 [type]
      185 CALL                             R7 1 1
      186 JUMPIFNOTEQKS                    R7 K0 ["table"] ; [+17]
      188 GETTABLEKS                       R7 R0 K24 ["defaultProps"]
      190 JUMPIFNOT                        R7 ; [+13]
      191 GETTABLEKS                       R7 R0 K24 ["defaultProps"]
      193 MOVE                             R8 R7
      194 LOADNIL                          R9
      195 LOADNIL                          R10
      196 FORGPREP                         R8
      197 GETTABLE                         R13 R2 R11
      198 JUMPIFNOTEQKNIL                  R13 ; [+3]
      200 GETTABLE                         R13 R7 R11
      201 SETTABLE                         R13 R2 R11
      202 FORGLOOP                         R8 2 ; [-6]
      204 GETUPVAL                         R7 0
      205 JUMPIFNOT                        R7 ; [+62]
      206 JUMPIF                           R3 ; [+1]
      207 JUMPIFNOT                        R4 ; [+42]
      208 LOADNIL                          R7
      209 FASTCALL1                        TYPE R0 ; [+3]
      210 MOVE                             R9 R0
      211 GETIMPORT                        R8 K5 [type]
      213 CALL                             R8 1 1
      214 JUMPIFNOTEQKS                    R8 K25 ["function"] ; [+8]
      216 GETIMPORT                        R8 K29 [debug.info]
      218 MOVE                             R9 R0
      219 LOADK                            R10 K30 ["n"]
      220 CALL                             R8 2 1
      221 ORK                              R7 R8 K26 ["<function>"]
      222 JUMP                             ; [+17]
      223 FASTCALL1                        TYPE R0 ; [+3]
      224 MOVE                             R9 R0
      225 GETIMPORT                        R8 K5 [type]
      227 CALL                             R8 1 1
      228 JUMPIFNOTEQKS                    R8 K0 ["table"] ; [+10]
      230 GETTABLEKS                       R8 R0 K31 ["displayName"]
      232 JUMPIF                           R8 ; [+4]
      233 GETTABLEKS                       R8 R0 K32 ["name"]
      235 JUMPIF                           R8 ; [+1]
      236 LOADK                            R8 K33 ["Unknown"]
      237 MOVE                             R7 R8
      238 JUMP                             ; [+1]
      239 MOVE                             R7 R0
      240 JUMPIFNOT                        R3 ; [+4]
      241 GETUPVAL                         R8 2
      242 MOVE                             R9 R2
      243 MOVE                             R10 R7
      244 CALL                             R8 2 0
      245 JUMPIFNOT                        R4 ; [+4]
      246 GETUPVAL                         R8 3
      247 MOVE                             R9 R2
      248 MOVE                             R10 R7
      249 CALL                             R8 2 0
      250 JUMPIFNOTEQKNIL                  R5 ; [+17]
      252 DUPTABLE                         R7 K36 [{"fileName", "lineNumber"}]
      253 GETIMPORT                        R8 K29 [debug.info]
      255 LOADN                            R9 3
      256 LOADK                            R10 K37 ["s"]
      257 CALL                             R8 2 1
      258 SETTABLEKS                       R8 R7 K34 ["fileName"]
      260 GETIMPORT                        R8 K29 [debug.info]
      262 LOADN                            R9 3
      263 LOADK                            R10 K38 ["l"]
      264 CALL                             R8 2 1
      265 SETTABLEKS                       R8 R7 K35 ["lineNumber"]
      267 MOVE                             R5 R7
      268 GETUPVAL                         R7 4
      269 MOVE                             R8 R0
      270 MOVE                             R9 R3
      271 MOVE                             R10 R4
      272 LOADNIL                          R11
      273 MOVE                             R12 R5
      274 GETUPVAL                         R13 5
      275 GETTABLEKS                       R13 R13 K39 ["current"]
      277 MOVE                             R14 R2
      278 CALL                             R7 7 1
      279 RETURN                           R7 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["type"]
        3 MOVE                             R4 R1
        4 GETTABLEKS                       R5 R0 K1 ["ref"]
        6 GETTABLEKS                       R6 R0 K2 ["_self"]
        8 GETTABLEKS                       R7 R0 K3 ["_source"]
       10 GETTABLEKS                       R8 R0 K4 ["_owner"]
       12 GETTABLEKS                       R9 R0 K5 ["props"]
       14 CALL                             R2 7 1
       15 RETURN                           R2 1

PROTO_15:
        0 PREPVARARGS                      2
        1 JUMPIFNOTEQKNIL                  R0 ; [+15]
        3 GETIMPORT                        R2 K1 [error]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["new"]
        8 LOADK                            R5 K3 ["React.cloneElement(...): The argument must be a React element, but you passed "]
        9 FASTCALL1                        TOSTRING R0 ; [+3]
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K5 [tostring]
       13 CALL                             R6 1 1
       14 CONCAT                           R4 R5 R6
       15 CALL                             R3 1 -1
       16 CALL                             R2 -1 0
       17 GETTABLEKS                       R2 R0 K6 ["props"]
       19 JUMPIFEQKNIL                     R2 ; [+6]
       21 GETIMPORT                        R3 K9 [table.clone]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 JUMP                             ; [+2]
       26 NEWTABLE                         R3 0 0
       28 GETTABLEKS                       R4 R0 K10 ["key"]
       30 GETTABLEKS                       R5 R0 K11 ["ref"]
       32 GETTABLEKS                       R6 R0 K12 ["_source"]
       34 GETTABLEKS                       R7 R0 K13 ["_owner"]
       36 JUMPIFEQKNIL                     R1 ; [+77]
       38 GETTABLEKS                       R8 R1 K11 ["ref"]
       40 JUMPIFEQKNIL                     R8 ; [+6]
       42 MOVE                             R5 R8
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R7 R9 K14 ["current"]
       46 JUMP                             ; [+26]
       47 GETUPVAL                         R9 2
       48 JUMPIFNOT                        R9 ; [+18]
       49 GETTABLEKS                       R9 R1 K11 ["ref"]
       51 JUMPIFEQKNIL                     R9 ; [+15]
       53 GETTABLEKS                       R10 R1 K11 ["ref"]
       55 FASTCALL1                        TYPE R10 ; [+2]
       56 GETIMPORT                        R9 K16 [type]
       58 CALL                             R9 1 1
       59 JUMPIFNOTEQKS                    R9 K7 ["table"] ; [+7]
       61 GETTABLEKS                       R9 R1 K11 ["ref"]
       63 GETTABLEKS                       R9 R9 K17 ["isReactWarning"]
       65 JUMPIFNOT                        R9 ; [+1]
       66 JUMP                             ; [+6]
       67 GETTABLEKS                       R10 R1 K11 ["ref"]
       69 JUMPIFNOTEQKNIL                  R10 ; [+2]
       71 LOADB                            R9 0 +1
       72 LOADB                            R9 1
       73 GETTABLEKS                       R9 R1 K10 ["key"]
       75 JUMPIFEQKNIL                     R9 ; [+12]
       77 FASTCALL1                        TYPE R9 ; [+3]
       78 MOVE                             R11 R9
       79 GETIMPORT                        R10 K16 [type]
       81 CALL                             R10 1 1
       82 JUMPIFNOTEQKS                    R10 K18 ["number"] ; [+3]
       84 MOVE                             R4 R9
       85 JUMP                             ; [+28]
       86 ORK                              R4 R9 K19 ["nil"]
       87 JUMP                             ; [+26]
       88 GETUPVAL                         R10 2
       89 JUMPIFNOT                        R10 ; [+18]
       90 GETTABLEKS                       R10 R1 K10 ["key"]
       92 JUMPIFEQKNIL                     R10 ; [+15]
       94 GETTABLEKS                       R11 R1 K10 ["key"]
       96 FASTCALL1                        TYPE R11 ; [+2]
       97 GETIMPORT                        R10 K16 [type]
       99 CALL                             R10 1 1
      100 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+7]
      102 GETTABLEKS                       R10 R1 K10 ["key"]
      104 GETTABLEKS                       R10 R10 K17 ["isReactWarning"]
      106 JUMPIFNOT                        R10 ; [+1]
      107 JUMP                             ; [+6]
      108 GETTABLEKS                       R11 R1 K10 ["key"]
      110 JUMPIFNOTEQKNIL                  R11 ; [+2]
      112 LOADB                            R10 0 +1
      113 LOADB                            R10 1
      114 GETTABLEKS                       R8 R0 K15 ["type"]
      116 FASTCALL1                        TYPE R8 ; [+3]
      117 MOVE                             R11 R8
      118 GETIMPORT                        R10 K16 [type]
      120 CALL                             R10 1 1
      121 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+4]
      123 GETTABLEKS                       R9 R8 K20 ["defaultProps"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R9
      127 JUMPIFEQKNIL                     R1 ; [+23]
      129 MOVE                             R10 R1
      130 LOADNIL                          R11
      131 LOADNIL                          R12
      132 FORGPREP                         R10
      133 GETTABLE                         R15 R1 R13
      134 JUMPIFEQKNIL                     R15 ; [+14]
      136 GETUPVAL                         R16 3
      137 GETTABLE                         R15 R16 R13
      138 JUMPIF                           R15 ; [+10]
      139 GETTABLE                         R15 R1 R13
      140 JUMPIFNOTEQKNIL                  R15 ; [+6]
      142 JUMPIFEQKNIL                     R9 ; [+4]
      144 GETTABLE                         R15 R9 R13
      145 SETTABLE                         R15 R3 R13
      146 JUMP                             ; [+2]
      147 GETTABLE                         R15 R1 R13
      148 SETTABLE                         R15 R3 R13
      149 FORGLOOP                         R10 2 ; [-17]
      151 LOADK                            R11 K21 ["#"]
      152 FASTCALL1                        SELECT_VARARG R11 ; [+3]
      153 GETIMPORT                        R10 K23 [select]
      155 GETVARARGS                       R12 -1
      156 CALL                             R10 -1 1
      157 JUMPIFNOTEQKN                    R10 K24 [1] ; [+10]
      159 LOADN                            R12 1
      160 FASTCALL1                        SELECT_VARARG R12 ; [+3]
      161 GETIMPORT                        R11 K23 [select]
      163 GETVARARGS                       R13 -1
      164 CALL                             R11 -1 1
      165 SETTABLEKS                       R11 R3 K25 ["children"]
      167 JUMP                             ; [+10]
      168 LOADN                            R11 1
      169 JUMPIFNOTLT                      R11 R10 ; [+8]
      171 NEWTABLE                         R11 0 0
      173 GETVARARGS                       R12 -1
      174 SETLIST                          R11 R12 -1 [1]
      176 SETTABLEKS                       R11 R3 K25 ["children"]
      178 GETUPVAL                         R11 4
      179 GETTABLEKS                       R12 R0 K15 ["type"]
      181 MOVE                             R13 R4
      182 MOVE                             R14 R5
      183 LOADNIL                          R15
      184 MOVE                             R16 R6
      185 MOVE                             R17 R7
      186 MOVE                             R18 R3
      187 CALL                             R11 7 1
      188 RETURN                           R11 1

PROTO_16:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        8 GETTABLEKS                       R2 R0 K3 ["$$typeof"]
       10 GETUPVAL                         R3 0
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Error"]
       19 GETTABLEKS                       R4 R1 K8 ["__DEV__"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Shared"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R5 R5 K10 ["console"]
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Shared"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K4 [require]
       35 GETIMPORT                        R8 K1 [script]
       37 GETTABLEKS                       R8 R8 K2 ["Parent"]
       39 GETTABLEKS                       R8 R8 K11 ["ReactLazy"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K9 ["Shared"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R8 R8 K12 ["getComponentName"]
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R0 K9 ["Shared"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R9 R9 K13 ["ReactSymbols"]
       56 GETTABLEKS                       R9 R9 K14 ["REACT_ELEMENT_TYPE"]
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R11 R0 K9 ["Shared"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R10 R10 K15 ["ReactSharedInternals"]
       65 GETTABLEKS                       R10 R10 K16 ["ReactCurrentOwner"]
       67 DUPTABLE                         R11 K22 [{["key"] = True, ["ref"] = True, ["__self"] = True, ["__source"] = True}]
       68 LOADNIL                          R12
       69 LOADNIL                          R13
       70 LOADNIL                          R14
       71 JUMPIFNOT                        R4 ; [+2]
       72 NEWTABLE                         R14 0 0
       74 NEWTABLE                         R15 8 0
       76 DUPCLOSURE                       R16 K23 [PROTO_0]
       77 CAPTURE                          VAL R4
       78 DUPCLOSURE                       R17 K24 [PROTO_1]
       79 CAPTURE                          VAL R4
       80 DUPTABLE                         R18 K26 [{["isReactWarning"] = True}]
       81 NEWCLOSURE                       R19 P2
       82 CAPTURE                          VAL R4
       83 CAPTURE                          REF R12
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R18
       86 NEWCLOSURE                       R20 P3
       87 CAPTURE                          VAL R4
       88 CAPTURE                          REF R13
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R18
       91 NEWCLOSURE                       R21 P4
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R8
       95 CAPTURE                          REF R14
       96 DUPCLOSURE                       R22 K27 [PROTO_10]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R4
       99 DUPCLOSURE                       R23 K28 [PROTO_11]
      100 SETTABLEKS                       R23 R15 K29 ["jsx"]
      102 DUPCLOSURE                       R23 K30 [PROTO_12]
      103 SETTABLEKS                       R23 R15 K31 ["jsxDEV"]
      105 DUPCLOSURE                       R23 K32 [PROTO_13]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R21
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R20
      110 CAPTURE                          VAL R22
      111 CAPTURE                          VAL R10
      112 SETTABLEKS                       R23 R15 K33 ["createElement"]
      114 DUPCLOSURE                       R24 K34 [PROTO_14]
      115 CAPTURE                          VAL R22
      116 SETTABLEKS                       R24 R15 K35 ["cloneAndReplaceKey"]
      118 DUPCLOSURE                       R24 K36 [PROTO_15]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R22
      124 SETTABLEKS                       R24 R15 K37 ["cloneElement"]
      126 DUPCLOSURE                       R24 K38 [PROTO_16]
      127 CAPTURE                          VAL R9
      128 SETTABLEKS                       R24 R15 K39 ["isValidElement"]
      130 CLOSEUPVALS                      R12
      131 RETURN                           R15 1
