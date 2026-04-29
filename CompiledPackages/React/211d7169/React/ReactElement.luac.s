PROTO_0:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+22]
        5 JUMPIFNOT                        R0 ; [+21]
        6 GETTABLEKS                       R1 R0 K3 ["ref"]
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETTABLEKS                       R2 R0 K3 ["ref"]
       11 FASTCALL1                        TYPEOF R2 ; [+2]
       12 GETIMPORT                        R1 K5 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["table"] ; [+11]
       17 GETTABLEKS                       R2 R0 K3 ["ref"]
       19 GETTABLEKS                       R1 R2 K7 ["get"]
       21 JUMPIFNOT                        R1 ; [+5]
       22 GETTABLEKS                       R2 R1 K8 ["isReactWarning"]
       24 JUMPIFNOT                        R2 ; [+2]
       25 LOADB                            R2 0
       26 RETURN                           R2 1
       27 GETTABLEKS                       R2 R0 K3 ["ref"]
       29 JUMPIFNOTEQKNIL                  R2 ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+21]
        5 GETTABLEKS                       R1 R0 K3 ["key"]
        7 JUMPIFNOT                        R1 ; [+18]
        8 GETTABLEKS                       R2 R0 K3 ["key"]
       10 FASTCALL1                        TYPEOF R2 ; [+2]
       11 GETIMPORT                        R1 K5 [typeof]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K6 ["table"] ; [+11]
       16 GETTABLEKS                       R2 R0 K3 ["key"]
       18 GETTABLEKS                       R1 R2 K7 ["get"]
       20 JUMPIFNOT                        R1 ; [+5]
       21 GETTABLEKS                       R2 R1 K8 ["isReactWarning"]
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADB                            R2 0
       25 RETURN                           R2 1
       26 GETTABLEKS                       R2 R0 K3 ["key"]
       28 JUMPIFNOTEQKNIL                  R2 ; [+2]
       30 LOADB                            R1 0 +1
       31 LOADB                            R1 1
       32 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+10]
        5 GETUPVAL                         R0 0
        6 JUMPIF                           R0 ; [+8]
        7 LOADB                            R0 1
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K3 ["error"]
       12 LOADK                            R1 K4 ["%s: `key` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)"]
       13 GETUPVAL                         R2 2
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R1 K0 ["key"] ; [+18]
        2 GETIMPORT                        R3 K2 [_G]
        4 GETTABLEKS                       R2 R3 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETUPVAL                         R2 0
        8 JUMPIF                           R2 ; [+8]
        9 LOADB                            R2 1
       10 SETUPVAL                         R2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["error"]
       14 LOADK                            R3 K5 ["%s: `key` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)"]
       15 GETUPVAL                         R4 2
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 3
       18 RETURN                           R2 1
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R0 K0 ["key"]
        7 DUPTABLE                         R5 K2 [{"__index"}]
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R6 R5 K1 ["__index"]
       15 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K4 [setmetatable]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+10]
        5 GETUPVAL                         R0 0
        6 JUMPIF                           R0 ; [+8]
        7 LOADB                            R0 1
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K3 ["error"]
       12 LOADK                            R1 K4 ["%s: `ref` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)"]
       13 GETUPVAL                         R2 2
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R1 K0 ["ref"] ; [+18]
        2 GETIMPORT                        R3 K2 [_G]
        4 GETTABLEKS                       R2 R3 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETUPVAL                         R2 0
        8 JUMPIF                           R2 ; [+8]
        9 LOADB                            R2 1
       10 SETUPVAL                         R2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["error"]
       14 LOADK                            R3 K5 ["%s: `ref` is not a prop. Trying to access it will result in `nil` being returned. If you need to access the same value within the child component, you should pass it as a different prop. (https://reactjs.org/link/special-props)"]
       15 GETUPVAL                         R4 2
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 3
       18 RETURN                           R2 1
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R0 K0 ["ref"]
        7 DUPTABLE                         R5 K2 [{"__index"}]
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R6 R5 K1 ["__index"]
       15 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K4 [setmetatable]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+32]
        5 GETTABLEKS                       R2 R0 K3 ["ref"]
        7 FASTCALL1                        TYPEOF R2 ; [+2]
        8 GETIMPORT                        R1 K5 [typeof]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+25]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K7 ["current"]
       16 JUMPIFNOT                        R1 ; [+20]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K7 ["current"]
       21 GETTABLEKS                       R2 R3 K8 ["type"]
       23 CALL                             R1 1 1
       24 GETUPVAL                         R3 2
       25 GETTABLE                         R2 R3 R1
       26 JUMPIF                           R2 ; [+10]
       27 GETIMPORT                        R2 K10 [error]
       29 GETIMPORT                        R3 K12 [string.format]
       31 LOADK                            R4 K13 ["Component \"%s\" contains the string ref \"%s\". Support for string refs has been removed. We recommend using useRef() or createRef() instead. Learn more about using refs safely here: https://reactjs.org/link/strict-mode-string-ref"]
       32 ORK                              R5 R1 K14 ["Unknown"]
       33 GETTABLEKS                       R6 R0 K3 ["ref"]
       35 CALL                             R3 3 -1
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R7 K5 [{"type", "key", "ref", "props", "_owner"}]
        1 SETTABLEKS                       R0 R7 K0 ["type"]
        3 SETTABLEKS                       R1 R7 K1 ["key"]
        5 SETTABLEKS                       R2 R7 K2 ["ref"]
        7 SETTABLEKS                       R6 R7 K3 ["props"]
        9 SETTABLEKS                       R5 R7 K4 ["_owner"]
       11 GETUPVAL                         R8 0
       12 SETTABLEKS                       R8 R7 K6 ["$$typeof"]
       14 GETIMPORT                        R9 K8 [_G]
       16 GETTABLEKS                       R8 R9 K9 ["__DEV__"]
       18 JUMPIFNOT                        R8 ; [+20]
       19 NEWTABLE                         R9 0 0
       21 DUPTABLE                         R10 K11 [{"__index"}]
       22 DUPTABLE                         R11 K13 [{"validated"}]
       23 LOADB                            R12 0
       24 SETTABLEKS                       R12 R11 K12 ["validated"]
       26 SETTABLEKS                       R11 R10 K10 ["__index"]
       28 FASTCALL2                        SETMETATABLE R9 R10 ; [+3]
       30 GETIMPORT                        R8 K15 [setmetatable]
       32 CALL                             R8 2 1
       33 SETTABLEKS                       R8 R7 K16 ["_store"]
       35 SETTABLEKS                       R3 R7 K17 ["_self"]
       37 SETTABLEKS                       R4 R7 K18 ["_source"]
       39 RETURN                           R7 1

PROTO_10:
        0 GETIMPORT                        R3 K1 [error]
        2 LOADK                            R4 K2 ["JSX is currently unsupported"]
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R5 K1 [error]
        2 LOADK                            R6 K2 ["JSX is currently unsupported"]
        3 CALL                             R5 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 1 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 JUMPIFEQKNIL                     R1 ; [+127]
        9 GETIMPORT                        R9 K1 [_G]
       11 GETTABLEKS                       R8 R9 K2 ["__DEV__"]
       13 JUMPIFNOT                        R8 ; [+22]
       14 JUMPIFNOT                        R1 ; [+21]
       15 GETTABLEKS                       R8 R1 K3 ["ref"]
       17 JUMPIFNOT                        R8 ; [+18]
       18 GETTABLEKS                       R9 R1 K3 ["ref"]
       20 FASTCALL1                        TYPEOF R9 ; [+2]
       21 GETIMPORT                        R8 K5 [typeof]
       23 CALL                             R8 1 1
       24 JUMPIFNOTEQKS                    R8 K6 ["table"] ; [+11]
       26 GETTABLEKS                       R9 R1 K3 ["ref"]
       28 GETTABLEKS                       R8 R9 K7 ["get"]
       30 JUMPIFNOT                        R8 ; [+5]
       31 GETTABLEKS                       R9 R8 K8 ["isReactWarning"]
       33 JUMPIFNOT                        R9 ; [+2]
       34 LOADB                            R7 0
       35 JUMP                             ; [+6]
       36 GETTABLEKS                       R8 R1 K3 ["ref"]
       38 JUMPIFNOTEQKNIL                  R8 ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 JUMPIFNOT                        R7 ; [+10]
       43 GETTABLEKS                       R4 R1 K3 ["ref"]
       45 GETIMPORT                        R8 K1 [_G]
       47 GETTABLEKS                       R7 R8 K2 ["__DEV__"]
       49 JUMPIFNOT                        R7 ; [+3]
       50 GETUPVAL                         R7 0
       51 MOVE                             R8 R1
       52 CALL                             R7 1 0
       53 GETIMPORT                        R9 K1 [_G]
       55 GETTABLEKS                       R8 R9 K2 ["__DEV__"]
       57 JUMPIFNOT                        R8 ; [+21]
       58 GETTABLEKS                       R8 R1 K9 ["key"]
       60 JUMPIFNOT                        R8 ; [+18]
       61 GETTABLEKS                       R9 R1 K9 ["key"]
       63 FASTCALL1                        TYPEOF R9 ; [+2]
       64 GETIMPORT                        R8 K5 [typeof]
       66 CALL                             R8 1 1
       67 JUMPIFNOTEQKS                    R8 K6 ["table"] ; [+11]
       69 GETTABLEKS                       R9 R1 K9 ["key"]
       71 GETTABLEKS                       R8 R9 K7 ["get"]
       73 JUMPIFNOT                        R8 ; [+5]
       74 GETTABLEKS                       R9 R8 K8 ["isReactWarning"]
       76 JUMPIFNOT                        R9 ; [+2]
       77 LOADB                            R7 0
       78 JUMP                             ; [+6]
       79 GETTABLEKS                       R8 R1 K9 ["key"]
       81 JUMPIFNOTEQKNIL                  R8 ; [+2]
       83 LOADB                            R7 0 +1
       84 LOADB                            R7 1
       85 JUMPIFNOT                        R7 ; [+18]
       86 GETTABLEKS                       R8 R1 K9 ["key"]
       88 FASTCALL1                        TYPEOF R8 ; [+2]
       89 GETIMPORT                        R7 K5 [typeof]
       91 CALL                             R7 1 1
       92 JUMPIFNOTEQKS                    R7 K10 ["number"] ; [+4]
       94 GETTABLEKS                       R3 R1 K9 ["key"]
       96 JUMP                             ; [+7]
       97 GETTABLEKS                       R8 R1 K9 ["key"]
       99 FASTCALL1                        TOSTRING R8 ; [+2]
      100 GETIMPORT                        R7 K12 [tostring]
      102 CALL                             R7 1 1
      103 MOVE                             R3 R7
      104 GETTABLEKS                       R7 R1 K13 ["__self"]
      106 JUMPIFNOTEQKNIL                  R7 ; [+3]
      108 LOADNIL                          R5
      109 JUMP                             ; [+2]
      110 GETTABLEKS                       R5 R1 K13 ["__self"]
      112 GETTABLEKS                       R7 R1 K14 ["__source"]
      114 JUMPIFNOTEQKNIL                  R7 ; [+3]
      116 LOADNIL                          R6
      117 JUMP                             ; [+2]
      118 GETTABLEKS                       R6 R1 K14 ["__source"]
      120 GETIMPORT                        R7 K16 [pairs]
      122 MOVE                             R8 R1
      123 CALL                             R7 1 3
      124 FORGPREP_NEXT                    R7
      125 GETTABLE                         R12 R1 R10
      126 JUMPIFEQKNIL                     R12 ; [+6]
      128 GETUPVAL                         R13 1
      129 GETTABLE                         R12 R13 R10
      130 JUMPIF                           R12 ; [+2]
      131 GETTABLE                         R12 R1 R10
      132 SETTABLE                         R12 R2 R10
      133 FORGLOOP                         R7 2 ; [-9]
      135 LOADK                            R8 K17 ["#"]
      136 FASTCALL1                        SELECT_VARARG R8 ; [+3]
      137 GETIMPORT                        R7 K19 [select]
      139 GETVARARGS                       R9 -1
      140 CALL                             R7 -1 1
      141 JUMPIFNOTEQKN                    R7 K20 [1] ; [+10]
      143 LOADN                            R9 1
      144 FASTCALL1                        SELECT_VARARG R9 ; [+3]
      145 GETIMPORT                        R8 K19 [select]
      147 GETVARARGS                       R10 -1
      148 CALL                             R8 -1 1
      149 SETTABLEKS                       R8 R2 K21 ["children"]
      151 JUMP                             ; [+41]
      152 LOADN                            R8 1
      153 JUMPIFNOTLT                      R8 R7 ; [+39]
      155 GETIMPORT                        R8 K23 [table.create]
      157 MOVE                             R9 R7
      158 CALL                             R8 1 1
      159 LOADN                            R11 1
      160 MOVE                             R9 R7
      161 LOADN                            R10 1
      162 FORNPREP                         R9
      163 FASTCALL1                        SELECT_VARARG R11 ; [+4]
      164 GETIMPORT                        R12 K19 [select]
      166 MOVE                             R13 R11
      167 GETVARARGS                       R14 -1
      168 CALL                             R12 -1 1
      169 FASTCALL2                        TABLE_INSERT R8 R12 ; [+5]
      171 MOVE                             R14 R8
      172 MOVE                             R15 R12
      173 GETIMPORT                        R13 K25 [table.insert]
      175 CALL                             R13 2 0
      176 FORNLOOP                         R9
      177 GETIMPORT                        R10 K1 [_G]
      179 GETTABLEKS                       R9 R10 K2 ["__DEV__"]
      181 JUMPIFNOT                        R9 ; [+9]
      182 GETUPVAL                         R10 2
      183 GETTABLEKS                       R9 R10 K26 ["freeze"]
      185 JUMPIFNOT                        R9 ; [+5]
      186 GETUPVAL                         R10 2
      187 GETTABLEKS                       R9 R10 K26 ["freeze"]
      189 MOVE                             R10 R8
      190 CALL                             R9 1 0
      191 SETTABLEKS                       R8 R2 K21 ["children"]
      193 FASTCALL1                        TYPEOF R0 ; [+3]
      194 MOVE                             R9 R0
      195 GETIMPORT                        R8 K5 [typeof]
      197 CALL                             R8 1 1
      198 JUMPIFNOTEQKS                    R8 K6 ["table"] ; [+18]
      200 GETTABLEKS                       R8 R0 K27 ["defaultProps"]
      202 JUMPIFNOT                        R8 ; [+14]
      203 GETTABLEKS                       R8 R0 K27 ["defaultProps"]
      205 GETIMPORT                        R9 K16 [pairs]
      207 MOVE                             R10 R8
      208 CALL                             R9 1 3
      209 FORGPREP_NEXT                    R9
      210 GETTABLE                         R14 R2 R12
      211 JUMPIFNOTEQKNIL                  R14 ; [+3]
      213 GETTABLE                         R14 R8 R12
      214 SETTABLE                         R14 R2 R12
      215 FORGLOOP                         R9 2 ; [-6]
      217 GETIMPORT                        R9 K1 [_G]
      219 GETTABLEKS                       R8 R9 K2 ["__DEV__"]
      221 JUMPIFNOT                        R8 ; [+44]
      222 JUMPIF                           R3 ; [+1]
      223 JUMPIFNOT                        R4 ; [+42]
      224 LOADNIL                          R8
      225 FASTCALL1                        TYPEOF R0 ; [+3]
      226 MOVE                             R10 R0
      227 GETIMPORT                        R9 K5 [typeof]
      229 CALL                             R9 1 1
      230 JUMPIFNOTEQKS                    R9 K28 ["function"] ; [+8]
      232 GETIMPORT                        R9 K32 [debug.info]
      234 MOVE                             R10 R0
      235 LOADK                            R11 K33 ["n"]
      236 CALL                             R9 2 1
      237 ORK                              R8 R9 K29 ["<function>"]
      238 JUMP                             ; [+17]
      239 FASTCALL1                        TYPEOF R0 ; [+3]
      240 MOVE                             R10 R0
      241 GETIMPORT                        R9 K5 [typeof]
      243 CALL                             R9 1 1
      244 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+10]
      246 GETTABLEKS                       R9 R0 K34 ["displayName"]
      248 JUMPIF                           R9 ; [+4]
      249 GETTABLEKS                       R9 R0 K35 ["name"]
      251 JUMPIF                           R9 ; [+1]
      252 LOADK                            R9 K36 ["Unknown"]
      253 MOVE                             R8 R9
      254 JUMP                             ; [+1]
      255 MOVE                             R8 R0
      256 JUMPIFNOT                        R3 ; [+4]
      257 GETUPVAL                         R9 3
      258 MOVE                             R10 R2
      259 MOVE                             R11 R8
      260 CALL                             R9 2 0
      261 JUMPIFNOT                        R4 ; [+4]
      262 GETUPVAL                         R9 4
      263 MOVE                             R10 R2
      264 MOVE                             R11 R8
      265 CALL                             R9 2 0
      266 GETUPVAL                         R8 5
      267 MOVE                             R9 R0
      268 MOVE                             R10 R3
      269 MOVE                             R11 R4
      270 MOVE                             R12 R5
      271 MOVE                             R13 R6
      272 GETUPVAL                         R15 6
      273 GETTABLEKS                       R14 R15 K37 ["current"]
      275 MOVE                             R15 R2
      276 CALL                             R8 7 1
      277 RETURN                           R8 1

PROTO_13:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R0 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 NOT                              R3 R4
        7 LOADK                            R5 K0 ["React.cloneElement(...): The argument must be a React element, but you passed "]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R7 R0
       10 GETIMPORT                        R6 K2 [tostring]
       12 CALL                             R6 1 1
       13 CONCAT                           R4 R5 R6
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K3 ["assign"]
       18 NEWTABLE                         R3 0 0
       20 GETTABLEKS                       R4 R0 K4 ["props"]
       22 CALL                             R2 2 1
       23 GETTABLEKS                       R3 R0 K5 ["key"]
       25 GETTABLEKS                       R4 R0 K6 ["ref"]
       27 GETTABLEKS                       R5 R0 K7 ["_self"]
       29 GETTABLEKS                       R6 R0 K8 ["_source"]
       31 GETTABLEKS                       R7 R0 K9 ["_owner"]
       33 JUMPIFEQKNIL                     R1 ; [+77]
       35 GETIMPORT                        R10 K11 [_G]
       37 GETTABLEKS                       R9 R10 K12 ["__DEV__"]
       39 JUMPIFNOT                        R9 ; [+22]
       40 JUMPIFNOT                        R1 ; [+21]
       41 GETTABLEKS                       R9 R1 K6 ["ref"]
       43 JUMPIFNOT                        R9 ; [+18]
       44 GETTABLEKS                       R10 R1 K6 ["ref"]
       46 FASTCALL1                        TYPEOF R10 ; [+2]
       47 GETIMPORT                        R9 K14 [typeof]
       49 CALL                             R9 1 1
       50 JUMPIFNOTEQKS                    R9 K15 ["table"] ; [+11]
       52 GETTABLEKS                       R10 R1 K6 ["ref"]
       54 GETTABLEKS                       R9 R10 K16 ["get"]
       56 JUMPIFNOT                        R9 ; [+5]
       57 GETTABLEKS                       R10 R9 K17 ["isReactWarning"]
       59 JUMPIFNOT                        R10 ; [+2]
       60 LOADB                            R8 0
       61 JUMP                             ; [+6]
       62 GETTABLEKS                       R9 R1 K6 ["ref"]
       64 JUMPIFNOTEQKNIL                  R9 ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 JUMPIFNOT                        R8 ; [+5]
       69 GETTABLEKS                       R4 R1 K6 ["ref"]
       71 GETUPVAL                         R8 2
       72 GETTABLEKS                       R7 R8 K18 ["current"]
       74 GETIMPORT                        R10 K11 [_G]
       76 GETTABLEKS                       R9 R10 K12 ["__DEV__"]
       78 JUMPIFNOT                        R9 ; [+21]
       79 GETTABLEKS                       R9 R1 K5 ["key"]
       81 JUMPIFNOT                        R9 ; [+18]
       82 GETTABLEKS                       R10 R1 K5 ["key"]
       84 FASTCALL1                        TYPEOF R10 ; [+2]
       85 GETIMPORT                        R9 K14 [typeof]
       87 CALL                             R9 1 1
       88 JUMPIFNOTEQKS                    R9 K15 ["table"] ; [+11]
       90 GETTABLEKS                       R10 R1 K5 ["key"]
       92 GETTABLEKS                       R9 R10 K16 ["get"]
       94 JUMPIFNOT                        R9 ; [+5]
       95 GETTABLEKS                       R10 R9 K17 ["isReactWarning"]
       97 JUMPIFNOT                        R10 ; [+2]
       98 LOADB                            R8 0
       99 JUMP                             ; [+6]
      100 GETTABLEKS                       R9 R1 K5 ["key"]
      102 JUMPIFNOTEQKNIL                  R9 ; [+2]
      104 LOADB                            R8 0 +1
      105 LOADB                            R8 1
      106 JUMPIFNOT                        R8 ; [+4]
      107 LOADK                            R8 K19 [""]
      108 GETTABLEKS                       R9 R1 K5 ["key"]
      110 CONCAT                           R3 R8 R9
      111 LOADNIL                          R8
      112 GETTABLEKS                       R10 R0 K20 ["type"]
      114 FASTCALL1                        TYPEOF R10 ; [+2]
      115 GETIMPORT                        R9 K14 [typeof]
      117 CALL                             R9 1 1
      118 JUMPIFNOTEQKS                    R9 K15 ["table"] ; [+10]
      120 GETTABLEKS                       R10 R0 K20 ["type"]
      122 GETTABLEKS                       R9 R10 K21 ["defaultProps"]
      124 JUMPIFNOT                        R9 ; [+4]
      125 GETTABLEKS                       R9 R0 K20 ["type"]
      127 GETTABLEKS                       R8 R9 K21 ["defaultProps"]
      129 JUMPIFEQKNIL                     R1 ; [+23]
      131 GETIMPORT                        R9 K23 [pairs]
      133 MOVE                             R10 R1
      134 CALL                             R9 1 3
      135 FORGPREP_NEXT                    R9
      136 GETTABLE                         R14 R1 R12
      137 JUMPIFNOT                        R14 ; [+13]
      138 GETUPVAL                         R15 3
      139 GETTABLE                         R14 R15 R12
      140 JUMPIF                           R14 ; [+10]
      141 GETTABLE                         R14 R1 R12
      142 JUMPIFNOTEQKNIL                  R14 ; [+6]
      144 JUMPIFEQKNIL                     R8 ; [+4]
      146 GETTABLE                         R14 R8 R12
      147 SETTABLE                         R14 R2 R12
      148 JUMP                             ; [+2]
      149 GETTABLE                         R14 R1 R12
      150 SETTABLE                         R14 R2 R12
      151 FORGLOOP                         R9 2 ; [-16]
      153 LOADK                            R10 K24 ["#"]
      154 FASTCALL1                        SELECT_VARARG R10 ; [+3]
      155 GETIMPORT                        R9 K26 [select]
      157 GETVARARGS                       R11 -1
      158 CALL                             R9 -1 1
      159 JUMPIFNOTEQKN                    R9 K27 [1] ; [+10]
      161 LOADN                            R11 1
      162 FASTCALL1                        SELECT_VARARG R11 ; [+3]
      163 GETIMPORT                        R10 K26 [select]
      165 GETVARARGS                       R12 -1
      166 CALL                             R10 -1 1
      167 SETTABLEKS                       R10 R2 K28 ["children"]
      169 JUMP                             ; [+10]
      170 LOADN                            R10 1
      171 JUMPIFNOTLT                      R10 R9 ; [+8]
      173 NEWTABLE                         R10 0 0
      175 GETVARARGS                       R11 -1
      176 SETLIST                          R10 R11 -1 [1]
      178 SETTABLEKS                       R10 R2 K28 ["children"]
      180 GETUPVAL                         R10 4
      181 GETTABLEKS                       R11 R0 K20 ["type"]
      183 MOVE                             R12 R3
      184 MOVE                             R13 R4
      185 MOVE                             R14 R5
      186 MOVE                             R15 R6
      187 MOVE                             R16 R7
      188 MOVE                             R17 R2
      189 CALL                             R10 7 1
      190 RETURN                           R10 1

PROTO_14:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["Shared"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R3 R4 K8 ["console"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K7 ["Shared"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R4 R5 K9 ["getComponentName"]
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K7 ["Shared"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R5 R6 K10 ["invariant"]
       35 GETIMPORT                        R8 K4 [require]
       37 GETTABLEKS                       R9 R0 K7 ["Shared"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R7 R8 K11 ["ReactSymbols"]
       42 GETTABLEKS                       R6 R7 K12 ["REACT_ELEMENT_TYPE"]
       44 GETIMPORT                        R9 K4 [require]
       46 GETTABLEKS                       R10 R0 K7 ["Shared"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R8 R9 K13 ["ReactSharedInternals"]
       51 GETTABLEKS                       R7 R8 K14 ["ReactCurrentOwner"]
       53 DUPTABLE                         R8 K19 [{"key", "ref", "__self", "__source"}]
       54 LOADB                            R9 1
       55 SETTABLEKS                       R9 R8 K15 ["key"]
       57 LOADB                            R9 1
       58 SETTABLEKS                       R9 R8 K16 ["ref"]
       60 LOADB                            R9 1
       61 SETTABLEKS                       R9 R8 K17 ["__self"]
       63 LOADB                            R9 1
       64 SETTABLEKS                       R9 R8 K18 ["__source"]
       66 LOADNIL                          R9
       67 LOADNIL                          R10
       68 LOADNIL                          R11
       69 GETIMPORT                        R13 K21 [_G]
       71 GETTABLEKS                       R12 R13 K22 ["__DEV__"]
       73 JUMPIFNOT                        R12 ; [+2]
       74 NEWTABLE                         R11 0 0
       76 NEWTABLE                         R12 8 0
       78 DUPCLOSURE                       R13 K23 [PROTO_0]
       79 DUPCLOSURE                       R14 K24 [PROTO_1]
       80 DUPTABLE                         R15 K26 [{"isReactWarning"}]
       81 LOADB                            R16 1
       82 SETTABLEKS                       R16 R15 K25 ["isReactWarning"]
       84 NEWCLOSURE                       R16 P2
       85 CAPTURE                          REF R9
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R15
       88 NEWCLOSURE                       R17 P3
       89 CAPTURE                          REF R10
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R15
       92 NEWCLOSURE                       R18 P4
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R4
       95 CAPTURE                          REF R11
       96 DUPCLOSURE                       R19 K27 [PROTO_9]
       97 CAPTURE                          VAL R6
       98 DUPCLOSURE                       R20 K28 [PROTO_10]
       99 SETTABLEKS                       R20 R12 K29 ["jsx"]
      101 DUPCLOSURE                       R20 K30 [PROTO_11]
      102 SETTABLEKS                       R20 R12 K31 ["jsxDEV"]
      104 DUPCLOSURE                       R20 K32 [PROTO_12]
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R7
      112 SETTABLEKS                       R20 R12 K33 ["createElement"]
      114 DUPCLOSURE                       R21 K34 [PROTO_13]
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R19
      120 SETTABLEKS                       R21 R12 K35 ["cloneElement"]
      122 DUPCLOSURE                       R21 K36 [PROTO_14]
      123 CAPTURE                          VAL R6
      124 SETTABLEKS                       R21 R12 K37 ["isValidElement"]
      126 CLOSEUPVALS                      R9
      127 RETURN                           R12 1
