PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+26]
        4 JUMPIFNOT                        R0 ; [+20]
        5 GETTABLEKS                       R1 R0 K1 ["_owner"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K2 ["type"]
       10 GETTABLEKS                       R4 R0 K3 ["_source"]
       12 JUMPIFEQKNIL                     R1 ; [+4]
       14 GETTABLEKS                       R5 R1 K2 ["type"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R5
       18 CALL                             R2 3 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K4 ["setExtraStackFrame"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K4 ["setExtraStackFrame"]
       28 LOADNIL                          R2
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K1 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFEQKS                       R0 K2 ["function"] ; [+31]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K3 ["new"]
       12 GETUPVAL                         R12 3
       13 ORK                              R2 R12 K4 ["React class"]
       14 LOADK                            R3 K5 [": "]
       15 GETUPVAL                         R4 4
       16 LOADK                            R5 K6 [" type `"]
       17 GETUPVAL                         R6 1
       18 LOADK                            R7 K7 ["` is invalid; "]
       19 LOADK                            R8 K8 ["it must be a function, usually from the `prop-types` package, but received `"]
       20 GETUPVAL                         R14 0
       21 GETUPVAL                         R15 1
       22 GETTABLE                         R13 R14 R15
       23 FASTCALL1                        TYPEOF R13 ; [+2]
       24 GETIMPORT                        R12 K1 [typeof]
       26 CALL                             R12 1 1
       27 MOVE                             R9 R12
       28 LOADK                            R10 K9 ["`."]
       29 LOADK                            R11 K10 ["This often happens because of typos such as `PropTypes.function` instead of `PropTypes.func`."]
       30 CONCAT                           R1 R2 R11
       31 CALL                             R0 1 1
       32 LOADK                            R1 K11 ["Invariant Violation"]
       33 SETTABLEKS                       R1 R0 K12 ["name"]
       35 GETIMPORT                        R1 K14 [error]
       37 MOVE                             R2 R0
       38 CALL                             R1 1 0
       39 GETUPVAL                         R1 0
       40 GETUPVAL                         R2 1
       41 GETTABLE                         R0 R1 R2
       42 GETUPVAL                         R1 5
       43 GETUPVAL                         R2 1
       44 GETUPVAL                         R3 3
       45 GETUPVAL                         R4 4
       46 LOADNIL                          R5
       47 LOADK                            R6 K15 ["SECRET_DO_NOT_PASS_THIS_OR_YOU_WILL_BE_FIRED"]
       48 CALL                             R0 6 -1
       49 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["__DEV__"]
        3 JUMPIF                           R6 ; [+4]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K1 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        7 JUMPIFNOT                        R6 ; [+222]
        8 JUMPIFNOT                        R0 ; [+8]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["warn"]
       13 LOADK                            R8 K3 ["You've defined both propTypes and validateProps on "]
       14 ORK                              R9 R4 K4 ["a component"]
       15 CONCAT                           R7 R8 R9
       16 CALL                             R6 1 0
       17 JUMPIFNOT                        R1 ; [+42]
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R7 R1
       20 GETIMPORT                        R6 K6 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFEQKS                       R6 K7 ["function"] ; [+16]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K8 ["error"]
       28 LOADK                            R7 K9 ["validateProps must be a function, but it is a %s.\nCheck the definition of the component %q."]
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R10 R1
       31 GETIMPORT                        R9 K6 [typeof]
       33 CALL                             R9 1 1
       34 ORK                              R10 R4 K10 [""]
       35 NAMECALL                         R7 R7 K11 ["format"]
       37 CALL                             R7 3 -1
       38 CALL                             R6 -1 0
       39 JUMP                             ; [+20]
       40 MOVE                             R6 R1
       41 MOVE                             R7 R2
       42 CALL                             R6 1 2
       43 JUMPIF                           R6 ; [+16]
       44 ORK                              R7 R7 K12 ["<Validator function did not supply a message>"]
       45 GETIMPORT                        R8 K14 [string.format]
       47 LOADK                            R9 K15 ["validateProps failed on a %s type in %s: %s"]
       48 MOVE                             R10 R3
       49 ORK                              R11 R4 K16 ["<UNKNOWN Component>"]
       50 FASTCALL1                        TOSTRING R7 ; [+3]
       51 MOVE                             R13 R7
       52 GETIMPORT                        R12 K18 [tostring]
       54 CALL                             R12 1 1
       55 CALL                             R8 4 1
       56 GETIMPORT                        R9 K19 [error]
       58 MOVE                             R10 R8
       59 CALL                             R9 1 0
       60 JUMPIFNOT                        R0 ; [+169]
       61 FASTCALL1                        TYPEOF R0 ; [+3]
       62 MOVE                             R9 R0
       63 GETIMPORT                        R8 K6 [typeof]
       65 CALL                             R8 1 1
       66 JUMPIFEQKS                       R8 K20 ["table"] ; [+2]
       68 LOADB                            R7 0 +1
       69 LOADB                            R7 1
       70 FASTCALL2K                       ASSERT R7 K21 ; [+4]
       72 LOADK                            R8 K21 ["propTypes needs to be a table"]
       73 GETIMPORT                        R6 K23 [assert]
       75 CALL                             R6 2 0
       76 MOVE                             R6 R0
       77 LOADNIL                          R7
       78 LOADNIL                          R8
       79 FORGPREP                         R6
       80 GETIMPORT                        R11 K25 [xpcall]
       82 NEWCLOSURE                       R12 P0
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R9
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R2
       89 GETUPVAL                         R13 3
       90 CALL                             R11 2 2
       91 FASTCALL1                        TYPEOF R12 ; [+3]
       92 MOVE                             R15 R12
       93 GETIMPORT                        R14 K6 [typeof]
       95 CALL                             R14 1 1
       96 JUMPIFEQKS                       R14 K20 ["table"] ; [+2]
       98 LOADB                            R13 0 +1
       99 LOADB                            R13 1
      100 JUMPIFEQKNIL                     R12 ; [+57]
      102 JUMPIF                           R13 ; [+55]
      103 GETUPVAL                         R14 0
      104 GETTABLEKS                       R14 R14 K0 ["__DEV__"]
      106 JUMPIFNOT                        R14 ; [+26]
      107 JUMPIFNOT                        R5 ; [+20]
      108 GETTABLEKS                       R14 R5 K26 ["_owner"]
      110 GETUPVAL                         R15 4
      111 GETTABLEKS                       R16 R5 K27 ["type"]
      113 GETTABLEKS                       R17 R5 K28 ["_source"]
      115 JUMPIFEQKNIL                     R14 ; [+4]
      117 GETTABLEKS                       R18 R14 K27 ["type"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R18
      121 CALL                             R15 3 1
      122 GETUPVAL                         R16 5
      123 GETTABLEKS                       R16 R16 K29 ["setExtraStackFrame"]
      125 MOVE                             R17 R15
      126 CALL                             R16 1 0
      127 JUMP                             ; [+5]
      128 GETUPVAL                         R14 5
      129 GETTABLEKS                       R14 R14 K29 ["setExtraStackFrame"]
      131 LOADNIL                          R15
      132 CALL                             R14 1 0
      133 GETUPVAL                         R14 1
      134 GETTABLEKS                       R14 R14 K8 ["error"]
      136 GETIMPORT                        R15 K14 [string.format]
      138 LOADK                            R16 K30 ["%s: type specification of %s `%s` is invalid; the type checker function must return `nil` or an `Error` but returned a %s. You may have forgotten to pass an argument to the type checker creator (arrayOf, instanceOf, objectOf, oneOf, oneOfType, and shape all require an argument)."]
      139 ORK                              R17 R4 K31 ["React class"]
      140 MOVE                             R18 R3
      141 MOVE                             R19 R9
      142 FASTCALL1                        TYPEOF R12 ; [+3]
      143 MOVE                             R21 R12
      144 GETIMPORT                        R20 K6 [typeof]
      146 CALL                             R20 1 1
      147 CALL                             R15 5 -1
      148 CALL                             R14 -1 0
      149 GETUPVAL                         R14 0
      150 GETTABLEKS                       R14 R14 K0 ["__DEV__"]
      152 JUMPIFNOT                        R14 ; [+5]
      153 GETUPVAL                         R14 5
      154 GETTABLEKS                       R14 R14 K29 ["setExtraStackFrame"]
      156 LOADNIL                          R15
      157 CALL                             R14 1 0
      158 JUMPIFNOT                        R13 ; [+69]
      159 GETUPVAL                         R15 6
      160 GETTABLEKS                       R16 R12 K32 ["message"]
      162 GETTABLE                         R14 R15 R16
      163 JUMPIFNOTEQKNIL                  R14 ; [+64]
      165 GETUPVAL                         R14 6
      166 GETTABLEKS                       R16 R12 K32 ["message"]
      168 FASTCALL1                        TOSTRING R16 ; [+2]
      169 GETIMPORT                        R15 K18 [tostring]
      171 CALL                             R15 1 1
      172 LOADB                            R16 1
      173 SETTABLE                         R16 R14 R15
      174 GETUPVAL                         R14 0
      175 GETTABLEKS                       R14 R14 K0 ["__DEV__"]
      177 JUMPIFNOT                        R14 ; [+26]
      178 JUMPIFNOT                        R5 ; [+20]
      179 GETTABLEKS                       R14 R5 K26 ["_owner"]
      181 GETUPVAL                         R15 4
      182 GETTABLEKS                       R16 R5 K27 ["type"]
      184 GETTABLEKS                       R17 R5 K28 ["_source"]
      186 JUMPIFEQKNIL                     R14 ; [+4]
      188 GETTABLEKS                       R18 R14 K27 ["type"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R18
      192 CALL                             R15 3 1
      193 GETUPVAL                         R16 5
      194 GETTABLEKS                       R16 R16 K29 ["setExtraStackFrame"]
      196 MOVE                             R17 R15
      197 CALL                             R16 1 0
      198 JUMP                             ; [+5]
      199 GETUPVAL                         R14 5
      200 GETTABLEKS                       R14 R14 K29 ["setExtraStackFrame"]
      202 LOADNIL                          R15
      203 CALL                             R14 1 0
      204 GETUPVAL                         R14 1
      205 GETTABLEKS                       R14 R14 K2 ["warn"]
      207 GETIMPORT                        R15 K14 [string.format]
      209 LOADK                            R16 K33 ["Failed %s type: %s"]
      210 MOVE                             R17 R3
      211 GETTABLEKS                       R19 R12 K32 ["message"]
      213 FASTCALL1                        TOSTRING R19 ; [+2]
      214 GETIMPORT                        R18 K18 [tostring]
      216 CALL                             R18 1 1
      217 CALL                             R15 3 -1
      218 CALL                             R14 -1 0
      219 GETUPVAL                         R14 0
      220 GETTABLEKS                       R14 R14 K0 ["__DEV__"]
      222 JUMPIFNOT                        R14 ; [+5]
      223 GETUPVAL                         R14 5
      224 GETTABLEKS                       R14 R14 K29 ["setExtraStackFrame"]
      226 LOADNIL                          R15
      227 CALL                             R14 1 0
      228 FORGLOOP                         R6 2 ; [-149]
      230 RETURN                           R0 0

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
       19 GETIMPORT                        R4 K4 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K2 ["Parent"]
       25 GETTABLEKS                       R5 R5 K8 ["console"]
       27 CALL                             R4 1 1
       28 NEWTABLE                         R5 0 0
       30 GETIMPORT                        R6 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K2 ["Parent"]
       36 GETTABLEKS                       R7 R7 K9 ["ReactComponentStackFrame"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K10 ["describeUnknownElementTypeFrameInDEV"]
       41 GETIMPORT                        R8 K4 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R9 R9 K2 ["Parent"]
       47 GETTABLEKS                       R9 R9 K11 ["ReactSharedInternals"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K4 [require]
       52 GETIMPORT                        R11 K1 [script]
       54 GETTABLEKS                       R11 R11 K2 ["Parent"]
       56 GETTABLEKS                       R10 R11 K12 ["ErrorHandling.roblox"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R9 R9 K13 ["describeError"]
       61 GETTABLEKS                       R10 R8 K14 ["ReactDebugCurrentFrame"]
       63 DUPCLOSURE                       R11 K15 [PROTO_0]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R10
       67 DUPCLOSURE                       R12 K16 [PROTO_2]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R5
       75 RETURN                           R12 1
