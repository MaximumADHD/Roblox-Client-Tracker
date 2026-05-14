PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+26]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETTABLEKS                       R1 R0 K3 ["_owner"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K4 ["type"]
       11 GETTABLEKS                       R4 R0 K5 ["_source"]
       13 JUMPIFEQKNIL                     R1 ; [+4]
       15 GETTABLEKS                       R5 R1 K4 ["type"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R5
       19 CALL                             R2 3 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["setExtraStackFrame"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K6 ["setExtraStackFrame"]
       29 LOADNIL                          R2
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

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
        0 GETIMPORT                        R6 K1 [_G]
        2 GETTABLEKS                       R6 R6 K2 ["__DEV__"]
        4 JUMPIF                           R6 ; [+5]
        5 GETIMPORT                        R6 K1 [_G]
        7 GETTABLEKS                       R6 R6 K3 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        9 JUMPIFNOT                        R6 ; [+226]
       10 JUMPIFNOT                        R0 ; [+8]
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K4 ["warn"]
       15 LOADK                            R8 K5 ["You've defined both propTypes and validateProps on "]
       16 ORK                              R9 R4 K6 ["a component"]
       17 CONCAT                           R7 R8 R9
       18 CALL                             R6 1 0
       19 JUMPIFNOT                        R1 ; [+42]
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R7 R1
       22 GETIMPORT                        R6 K8 [typeof]
       24 CALL                             R6 1 1
       25 JUMPIFEQKS                       R6 K9 ["function"] ; [+16]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K10 ["error"]
       30 LOADK                            R7 K11 ["validateProps must be a function, but it is a %s.\nCheck the definition of the component %q."]
       31 FASTCALL1                        TYPEOF R1 ; [+3]
       32 MOVE                             R10 R1
       33 GETIMPORT                        R9 K8 [typeof]
       35 CALL                             R9 1 1
       36 ORK                              R10 R4 K12 [""]
       37 NAMECALL                         R7 R7 K13 ["format"]
       39 CALL                             R7 3 -1
       40 CALL                             R6 -1 0
       41 JUMP                             ; [+20]
       42 MOVE                             R6 R1
       43 MOVE                             R7 R2
       44 CALL                             R6 1 2
       45 JUMPIF                           R6 ; [+16]
       46 ORK                              R7 R7 K14 ["<Validator function did not supply a message>"]
       47 GETIMPORT                        R8 K16 [string.format]
       49 LOADK                            R9 K17 ["validateProps failed on a %s type in %s: %s"]
       50 MOVE                             R10 R3
       51 ORK                              R11 R4 K18 ["<UNKNOWN Component>"]
       52 FASTCALL1                        TOSTRING R7 ; [+3]
       53 MOVE                             R13 R7
       54 GETIMPORT                        R12 K20 [tostring]
       56 CALL                             R12 1 1
       57 CALL                             R8 4 1
       58 GETIMPORT                        R9 K21 [error]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 0
       62 JUMPIFNOT                        R0 ; [+173]
       63 FASTCALL1                        TYPEOF R0 ; [+3]
       64 MOVE                             R9 R0
       65 GETIMPORT                        R8 K8 [typeof]
       67 CALL                             R8 1 1
       68 JUMPIFEQKS                       R8 K22 ["table"] ; [+2]
       70 LOADB                            R7 0 +1
       71 LOADB                            R7 1
       72 FASTCALL2K                       ASSERT R7 K23 ; [+4]
       74 LOADK                            R8 K23 ["propTypes needs to be a table"]
       75 GETIMPORT                        R6 K25 [assert]
       77 CALL                             R6 2 0
       78 MOVE                             R6 R0
       79 LOADNIL                          R7
       80 LOADNIL                          R8
       81 FORGPREP                         R6
       82 GETIMPORT                        R11 K27 [xpcall]
       84 NEWCLOSURE                       R12 P0
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R9
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 GETUPVAL                         R13 2
       92 CALL                             R11 2 2
       93 FASTCALL1                        TYPEOF R12 ; [+3]
       94 MOVE                             R15 R12
       95 GETIMPORT                        R14 K8 [typeof]
       97 CALL                             R14 1 1
       98 JUMPIFEQKS                       R14 K22 ["table"] ; [+2]
      100 LOADB                            R13 0 +1
      101 LOADB                            R13 1
      102 JUMPIFEQKNIL                     R12 ; [+59]
      104 JUMPIF                           R13 ; [+57]
      105 GETIMPORT                        R14 K1 [_G]
      107 GETTABLEKS                       R14 R14 K2 ["__DEV__"]
      109 JUMPIFNOT                        R14 ; [+26]
      110 JUMPIFNOT                        R5 ; [+20]
      111 GETTABLEKS                       R14 R5 K28 ["_owner"]
      113 GETUPVAL                         R15 3
      114 GETTABLEKS                       R16 R5 K29 ["type"]
      116 GETTABLEKS                       R17 R5 K30 ["_source"]
      118 JUMPIFEQKNIL                     R14 ; [+4]
      120 GETTABLEKS                       R18 R14 K29 ["type"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R18
      124 CALL                             R15 3 1
      125 GETUPVAL                         R16 4
      126 GETTABLEKS                       R16 R16 K31 ["setExtraStackFrame"]
      128 MOVE                             R17 R15
      129 CALL                             R16 1 0
      130 JUMP                             ; [+5]
      131 GETUPVAL                         R14 4
      132 GETTABLEKS                       R14 R14 K31 ["setExtraStackFrame"]
      134 LOADNIL                          R15
      135 CALL                             R14 1 0
      136 GETUPVAL                         R14 0
      137 GETTABLEKS                       R14 R14 K10 ["error"]
      139 GETIMPORT                        R15 K16 [string.format]
      141 LOADK                            R16 K32 ["%s: type specification of %s `%s` is invalid; the type checker function must return `nil` or an `Error` but returned a %s. You may have forgotten to pass an argument to the type checker creator (arrayOf, instanceOf, objectOf, oneOf, oneOfType, and shape all require an argument)."]
      142 ORK                              R17 R4 K33 ["React class"]
      143 MOVE                             R18 R3
      144 MOVE                             R19 R9
      145 FASTCALL1                        TYPEOF R12 ; [+3]
      146 MOVE                             R21 R12
      147 GETIMPORT                        R20 K8 [typeof]
      149 CALL                             R20 1 1
      150 CALL                             R15 5 -1
      151 CALL                             R14 -1 0
      152 GETIMPORT                        R14 K1 [_G]
      154 GETTABLEKS                       R14 R14 K2 ["__DEV__"]
      156 JUMPIFNOT                        R14 ; [+5]
      157 GETUPVAL                         R14 4
      158 GETTABLEKS                       R14 R14 K31 ["setExtraStackFrame"]
      160 LOADNIL                          R15
      161 CALL                             R14 1 0
      162 JUMPIFNOT                        R13 ; [+71]
      163 GETUPVAL                         R15 5
      164 GETTABLEKS                       R16 R12 K34 ["message"]
      166 GETTABLE                         R14 R15 R16
      167 JUMPIFNOTEQKNIL                  R14 ; [+66]
      169 GETUPVAL                         R14 5
      170 GETTABLEKS                       R16 R12 K34 ["message"]
      172 FASTCALL1                        TOSTRING R16 ; [+2]
      173 GETIMPORT                        R15 K20 [tostring]
      175 CALL                             R15 1 1
      176 LOADB                            R16 1
      177 SETTABLE                         R16 R14 R15
      178 GETIMPORT                        R14 K1 [_G]
      180 GETTABLEKS                       R14 R14 K2 ["__DEV__"]
      182 JUMPIFNOT                        R14 ; [+26]
      183 JUMPIFNOT                        R5 ; [+20]
      184 GETTABLEKS                       R14 R5 K28 ["_owner"]
      186 GETUPVAL                         R15 3
      187 GETTABLEKS                       R16 R5 K29 ["type"]
      189 GETTABLEKS                       R17 R5 K30 ["_source"]
      191 JUMPIFEQKNIL                     R14 ; [+4]
      193 GETTABLEKS                       R18 R14 K29 ["type"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R18
      197 CALL                             R15 3 1
      198 GETUPVAL                         R16 4
      199 GETTABLEKS                       R16 R16 K31 ["setExtraStackFrame"]
      201 MOVE                             R17 R15
      202 CALL                             R16 1 0
      203 JUMP                             ; [+5]
      204 GETUPVAL                         R14 4
      205 GETTABLEKS                       R14 R14 K31 ["setExtraStackFrame"]
      207 LOADNIL                          R15
      208 CALL                             R14 1 0
      209 GETUPVAL                         R14 0
      210 GETTABLEKS                       R14 R14 K4 ["warn"]
      212 GETIMPORT                        R15 K16 [string.format]
      214 LOADK                            R16 K35 ["Failed %s type: %s"]
      215 MOVE                             R17 R3
      216 GETTABLEKS                       R19 R12 K34 ["message"]
      218 FASTCALL1                        TOSTRING R19 ; [+2]
      219 GETIMPORT                        R18 K20 [tostring]
      221 CALL                             R18 1 1
      222 CALL                             R15 3 -1
      223 CALL                             R14 -1 0
      224 GETIMPORT                        R14 K1 [_G]
      226 GETTABLEKS                       R14 R14 K2 ["__DEV__"]
      228 JUMPIFNOT                        R14 ; [+5]
      229 GETUPVAL                         R14 4
      230 GETTABLEKS                       R14 R14 K31 ["setExtraStackFrame"]
      232 LOADNIL                          R15
      233 CALL                             R14 1 0
      234 FORGLOOP                         R6 2 ; [-153]
      236 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K7 ["console"]
       22 CALL                             R3 1 1
       23 NEWTABLE                         R4 0 0
       25 GETIMPORT                        R5 K4 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R6 R6 K2 ["Parent"]
       31 GETTABLEKS                       R6 R6 K8 ["ReactComponentStackFrame"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K9 ["describeUnknownElementTypeFrameInDEV"]
       36 GETIMPORT                        R7 K4 [require]
       38 GETIMPORT                        R8 K1 [script]
       40 GETTABLEKS                       R8 R8 K2 ["Parent"]
       42 GETTABLEKS                       R8 R8 K10 ["ReactSharedInternals"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETIMPORT                        R10 K1 [script]
       49 GETTABLEKS                       R10 R10 K2 ["Parent"]
       51 GETTABLEKS                       R9 R10 K11 ["ErrorHandling.roblox"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R8 R8 K12 ["describeError"]
       56 GETTABLEKS                       R9 R7 K13 ["ReactDebugCurrentFrame"]
       58 DUPCLOSURE                       R10 K14 [PROTO_0]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R9
       61 DUPCLOSURE                       R11 K15 [PROTO_2]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R4
       68 RETURN                           R11 1
