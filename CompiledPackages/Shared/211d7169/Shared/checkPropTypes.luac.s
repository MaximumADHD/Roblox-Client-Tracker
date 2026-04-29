PROTO_0:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+26]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETTABLEKS                       R1 R0 K3 ["_owner"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K4 ["type"]
       11 GETTABLEKS                       R4 R0 K5 ["_source"]
       13 JUMPIFEQKNIL                     R1 ; [+4]
       15 GETTABLEKS                       R5 R1 K4 ["type"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADNIL                          R5
       19 CALL                             R2 3 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K6 ["setExtraStackFrame"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K6 ["setExtraStackFrame"]
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
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K3 ["new"]
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
        0 GETIMPORT                        R7 K1 [_G]
        2 GETTABLEKS                       R6 R7 K2 ["__DEV__"]
        4 JUMPIF                           R6 ; [+5]
        5 GETIMPORT                        R7 K1 [_G]
        7 GETTABLEKS                       R6 R7 K3 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        9 JUMPIFNOT                        R6 ; [+211]
       10 JUMPIFNOT                        R0 ; [+8]
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K4 ["warn"]
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
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K10 ["error"]
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
       47 LOADK                            R8 K15 ["validateProps failed on a %s type in %s: %s"]
       48 MOVE                             R10 R3
       49 ORK                              R11 R4 K16 ["<UNKNOWN Component>"]
       50 FASTCALL1                        TOSTRING R7 ; [+3]
       51 MOVE                             R13 R7
       52 GETIMPORT                        R12 K18 [tostring]
       54 CALL                             R12 1 1
       55 NAMECALL                         R8 R8 K13 ["format"]
       57 CALL                             R8 4 1
       58 GETIMPORT                        R9 K19 [error]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 0
       62 JUMPIFNOT                        R0 ; [+158]
       63 GETIMPORT                        R6 K21 [pairs]
       65 MOVE                             R7 R0
       66 CALL                             R6 1 3
       67 FORGPREP_NEXT                    R6
       68 GETIMPORT                        R11 K23 [pcall]
       70 NEWCLOSURE                       R12 P0
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R9
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R2
       77 CALL                             R11 1 2
       78 FASTCALL1                        TYPEOF R12 ; [+3]
       79 MOVE                             R15 R12
       80 GETIMPORT                        R14 K8 [typeof]
       82 CALL                             R14 1 1
       83 JUMPIFEQKS                       R14 K24 ["table"] ; [+2]
       85 LOADB                            R13 0 +1
       86 LOADB                            R13 1
       87 JUMPIFEQKNIL                     R12 ; [+59]
       89 JUMPIF                           R13 ; [+57]
       90 GETIMPORT                        R15 K1 [_G]
       92 GETTABLEKS                       R14 R15 K2 ["__DEV__"]
       94 JUMPIFNOT                        R14 ; [+26]
       95 JUMPIFNOT                        R5 ; [+20]
       96 GETTABLEKS                       R14 R5 K25 ["_owner"]
       98 GETUPVAL                         R15 2
       99 GETTABLEKS                       R16 R5 K26 ["type"]
      101 GETTABLEKS                       R17 R5 K27 ["_source"]
      103 JUMPIFEQKNIL                     R14 ; [+4]
      105 GETTABLEKS                       R18 R14 K26 ["type"]
      107 JUMPIF                           R18 ; [+1]
      108 LOADNIL                          R18
      109 CALL                             R15 3 1
      110 GETUPVAL                         R17 3
      111 GETTABLEKS                       R16 R17 K28 ["setExtraStackFrame"]
      113 MOVE                             R17 R15
      114 CALL                             R16 1 0
      115 JUMP                             ; [+5]
      116 GETUPVAL                         R15 3
      117 GETTABLEKS                       R14 R15 K28 ["setExtraStackFrame"]
      119 LOADNIL                          R15
      120 CALL                             R14 1 0
      121 GETUPVAL                         R15 0
      122 GETTABLEKS                       R14 R15 K10 ["error"]
      124 GETIMPORT                        R15 K30 [string.format]
      126 LOADK                            R16 K31 ["%s: type specification of %s `%s` is invalid; the type checker function must return `nil` or an `Error` but returned a %s. You may have forgotten to pass an argument to the type checker creator (arrayOf, instanceOf, objectOf, oneOf, oneOfType, and shape all require an argument)."]
      127 ORK                              R17 R4 K32 ["React class"]
      128 MOVE                             R18 R3
      129 MOVE                             R19 R9
      130 FASTCALL1                        TYPEOF R12 ; [+3]
      131 MOVE                             R21 R12
      132 GETIMPORT                        R20 K8 [typeof]
      134 CALL                             R20 1 1
      135 CALL                             R15 5 -1
      136 CALL                             R14 -1 0
      137 GETIMPORT                        R15 K1 [_G]
      139 GETTABLEKS                       R14 R15 K2 ["__DEV__"]
      141 JUMPIFNOT                        R14 ; [+5]
      142 GETUPVAL                         R15 3
      143 GETTABLEKS                       R14 R15 K28 ["setExtraStackFrame"]
      145 LOADNIL                          R15
      146 CALL                             R14 1 0
      147 JUMPIFNOT                        R13 ; [+71]
      148 GETUPVAL                         R15 4
      149 GETTABLEKS                       R16 R12 K33 ["message"]
      151 GETTABLE                         R14 R15 R16
      152 JUMPIFNOTEQKNIL                  R14 ; [+66]
      154 GETUPVAL                         R14 4
      155 GETTABLEKS                       R16 R12 K33 ["message"]
      157 FASTCALL1                        TOSTRING R16 ; [+2]
      158 GETIMPORT                        R15 K18 [tostring]
      160 CALL                             R15 1 1
      161 LOADB                            R16 1
      162 SETTABLE                         R16 R14 R15
      163 GETIMPORT                        R15 K1 [_G]
      165 GETTABLEKS                       R14 R15 K2 ["__DEV__"]
      167 JUMPIFNOT                        R14 ; [+26]
      168 JUMPIFNOT                        R5 ; [+20]
      169 GETTABLEKS                       R14 R5 K25 ["_owner"]
      171 GETUPVAL                         R15 2
      172 GETTABLEKS                       R16 R5 K26 ["type"]
      174 GETTABLEKS                       R17 R5 K27 ["_source"]
      176 JUMPIFEQKNIL                     R14 ; [+4]
      178 GETTABLEKS                       R18 R14 K26 ["type"]
      180 JUMPIF                           R18 ; [+1]
      181 LOADNIL                          R18
      182 CALL                             R15 3 1
      183 GETUPVAL                         R17 3
      184 GETTABLEKS                       R16 R17 K28 ["setExtraStackFrame"]
      186 MOVE                             R17 R15
      187 CALL                             R16 1 0
      188 JUMP                             ; [+5]
      189 GETUPVAL                         R15 3
      190 GETTABLEKS                       R14 R15 K28 ["setExtraStackFrame"]
      192 LOADNIL                          R15
      193 CALL                             R14 1 0
      194 GETUPVAL                         R15 0
      195 GETTABLEKS                       R14 R15 K4 ["warn"]
      197 GETIMPORT                        R15 K30 [string.format]
      199 LOADK                            R16 K34 ["Failed %s type: %s"]
      200 MOVE                             R17 R3
      201 GETTABLEKS                       R19 R12 K33 ["message"]
      203 FASTCALL1                        TOSTRING R19 ; [+2]
      204 GETIMPORT                        R18 K18 [tostring]
      206 CALL                             R18 1 1
      207 CALL                             R15 3 -1
      208 CALL                             R14 -1 0
      209 GETIMPORT                        R15 K1 [_G]
      211 GETTABLEKS                       R14 R15 K2 ["__DEV__"]
      213 JUMPIFNOT                        R14 ; [+5]
      214 GETUPVAL                         R15 3
      215 GETTABLEKS                       R14 R15 K28 ["setExtraStackFrame"]
      217 LOADNIL                          R15
      218 CALL                             R14 1 0
      219 FORGLOOP                         R6 2 ; [-152]
      221 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["Shared"]
       18 GETTABLEKS                       R4 R5 K8 ["ReactElementType"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K2 ["Parent"]
       27 GETTABLEKS                       R5 R6 K9 ["console"]
       29 CALL                             R4 1 1
       30 NEWTABLE                         R5 0 0
       32 GETIMPORT                        R6 K4 [require]
       34 GETIMPORT                        R9 K1 [script]
       36 GETTABLEKS                       R8 R9 K2 ["Parent"]
       38 GETTABLEKS                       R7 R8 K10 ["ReactComponentStackFrame"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R6 K11 ["describeUnknownElementTypeFrameInDEV"]
       43 GETIMPORT                        R8 K4 [require]
       45 GETIMPORT                        R11 K1 [script]
       47 GETTABLEKS                       R10 R11 K2 ["Parent"]
       49 GETTABLEKS                       R9 R10 K12 ["ReactSharedInternals"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R8 K13 ["ReactDebugCurrentFrame"]
       54 DUPCLOSURE                       R10 K14 [PROTO_0]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R9
       57 DUPCLOSURE                       R11 K15 [PROTO_2]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R5
       63 RETURN                           R11 1
