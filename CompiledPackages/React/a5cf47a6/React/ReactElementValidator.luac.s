PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+21]
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETTABLEKS                       R1 R0 K3 ["_owner"]
        8 LOADNIL                          R2
        9 JUMPIFNOT                        R1 ; [+2]
       10 GETTABLEKS                       R2 R1 K4 ["type"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R4 R0 K4 ["type"]
       15 GETTABLEKS                       R5 R0 K5 ["_source"]
       17 MOVE                             R6 R2
       18 CALL                             R3 3 1
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 1
       24 LOADNIL                          R2
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 GETTABLEKS                       R1 R1 K1 ["type"]
       10 CALL                             R0 1 1
       11 JUMPIFNOT                        R0 ; [+5]
       12 LOADK                            R2 K2 ["\n\nCheck the render method of `"]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K3 ["`."]
       15 CONCAT                           R1 R2 R4
       16 RETURN                           R1 1
       17 LOADK                            R0 K4 [""]
       18 RETURN                           R0 1

PROTO_3:
        0 JUMPIFEQKNIL                     R0 ; [+17]
        2 GETIMPORT                        R1 K2 [string.gsub]
        4 GETTABLEKS                       R2 R0 K3 ["fileName"]
        6 LOADK                            R3 K4 ["^.*[\\/]"]
        7 LOADK                            R4 K5 [""]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R2 R0 K6 ["lineNumber"]
       11 LOADK                            R4 K7 ["\n\nCheck your code at "]
       12 MOVE                             R5 R1
       13 LOADK                            R6 K8 [":"]
       14 MOVE                             R7 R2
       15 LOADK                            R8 K9 ["."]
       16 CONCAT                           R3 R4 R8
       17 RETURN                           R3 1
       18 LOADK                            R1 K5 [""]
       19 RETURN                           R1 1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+23]
        2 GETTABLEKS                       R2 R0 K0 ["__source"]
        4 JUMPIFEQKNIL                     R2 ; [+17]
        6 GETIMPORT                        R3 K3 [string.gsub]
        8 GETTABLEKS                       R4 R2 K4 ["fileName"]
       10 LOADK                            R5 K5 ["^.*[\\/]"]
       11 LOADK                            R6 K6 [""]
       12 CALL                             R3 3 1
       13 GETTABLEKS                       R4 R2 K7 ["lineNumber"]
       15 LOADK                            R5 K8 ["\n\nCheck your code at "]
       16 MOVE                             R6 R3
       17 LOADK                            R7 K9 [":"]
       18 MOVE                             R8 R4
       19 LOADK                            R9 K10 ["."]
       20 CONCAT                           R1 R5 R9
       21 RETURN                           R1 1
       22 LOADK                            R1 K6 [""]
       23 RETURN                           R1 1
       24 LOADK                            R1 K6 [""]
       25 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+13]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["current"]
        8 GETTABLEKS                       R3 R3 K1 ["type"]
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+5]
       12 LOADK                            R3 K2 ["\n\nCheck the render method of `"]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K3 ["`."]
       15 CONCAT                           R1 R3 R5
       16 JUMP                             ; [+1]
       17 LOADK                            R1 K4 [""]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K5 ["toJSBoolean"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 JUMPIF                           R2 ; [+48]
       24 FASTCALL1                        TYPEOF R0 ; [+3]
       25 MOVE                             R4 R0
       26 GETIMPORT                        R3 K7 [typeof]
       28 CALL                             R3 1 1
       29 JUMPIFNOTEQKS                    R3 K8 ["string"] ; [+3]
       31 MOVE                             R2 R0
       32 JUMP                             ; [+14]
       33 FASTCALL1                        TYPEOF R0 ; [+3]
       34 MOVE                             R4 R0
       35 GETIMPORT                        R3 K7 [typeof]
       37 CALL                             R3 1 1
       38 JUMPIFNOTEQKS                    R3 K9 ["table"] ; [+7]
       40 GETTABLEKS                       R2 R0 K10 ["displayName"]
       42 JUMPIF                           R2 ; [+4]
       43 GETTABLEKS                       R2 R0 K11 ["name"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R2
       47 JUMPIF                           R2 ; [+17]
       48 FASTCALL1                        TYPEOF R0 ; [+3]
       49 MOVE                             R4 R0
       50 GETIMPORT                        R3 K7 [typeof]
       52 CALL                             R3 1 1
       53 JUMPIFNOTEQKS                    R3 K12 ["function"] ; [+11]
       55 GETIMPORT                        R3 K15 [debug.info]
       57 MOVE                             R4 R0
       58 LOADK                            R5 K16 ["n"]
       59 CALL                             R3 2 1
       60 JUMPIFEQKS                       R3 K4 [""] ; [+3]
       62 MOVE                             R2 R3
       63 JUMP                             ; [+1]
       64 LOADNIL                          R2
       65 JUMPIFNOT                        R2 ; [+6]
       66 GETIMPORT                        R3 K18 [string.format]
       68 LOADK                            R4 K19 ["\n\nCheck the top-level render call using <%s>."]
       69 MOVE                             R5 R2
       70 CALL                             R3 2 1
       71 MOVE                             R1 R3
       72 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 JUMPIFEQKNIL                     R3 ; [+6]
        4 GETTABLEKS                       R3 R0 K0 ["_store"]
        6 GETTABLEKS                       R3 R3 K1 ["validated"]
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R0 K0 ["_store"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K1 ["validated"]
       15 GETTABLEKS                       R4 R0 K2 ["key"]
       17 JUMPIFNOTEQKNIL                  R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 JUMPIFEQ                         R3 R4 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 0
       29 MOVE                             R4 R1
       30 CALL                             R3 1 1
       31 GETUPVAL                         R5 1
       32 GETTABLE                         R4 R5 R3
       33 JUMPIFNOT                        R4 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R4 1
       36 LOADB                            R5 1
       37 SETTABLE                         R5 R4 R3
       38 LOADK                            R4 K3 [""]
       39 JUMPIFNOT                        R0 ; [+25]
       40 GETTABLEKS                       R5 R0 K4 ["_owner"]
       42 JUMPIFNOT                        R5 ; [+22]
       43 GETTABLEKS                       R5 R0 K4 ["_owner"]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R6 R6 K5 ["current"]
       48 JUMPIFEQ                         R5 R6 ; [+16]
       50 GETIMPORT                        R5 K8 [string.format]
       52 LOADK                            R6 K9 [" It was passed a child from %s."]
       53 GETUPVAL                         R8 3
       54 GETTABLEKS                       R9 R0 K4 ["_owner"]
       56 GETTABLEKS                       R9 R9 K10 ["type"]
       58 CALL                             R8 1 -1
       59 FASTCALL                         TOSTRING ; [+2]
       60 GETIMPORT                        R7 K12 [tostring]
       62 CALL                             R7 -1 1
       63 CALL                             R5 2 1
       64 MOVE                             R4 R5
       65 GETIMPORT                        R5 K14 [_G]
       67 GETTABLEKS                       R5 R5 K15 ["__DEV__"]
       69 JUMPIFNOT                        R5 ; [+66]
       70 GETIMPORT                        R5 K14 [_G]
       72 GETTABLEKS                       R5 R5 K15 ["__DEV__"]
       74 JUMPIFNOT                        R5 ; [+21]
       75 JUMPIFNOT                        R0 ; [+17]
       76 GETTABLEKS                       R5 R0 K4 ["_owner"]
       78 LOADNIL                          R6
       79 JUMPIFNOT                        R5 ; [+2]
       80 GETTABLEKS                       R6 R5 K10 ["type"]
       82 GETUPVAL                         R7 4
       83 GETTABLEKS                       R8 R0 K10 ["type"]
       85 GETTABLEKS                       R9 R0 K16 ["_source"]
       87 MOVE                             R10 R6
       88 CALL                             R7 3 1
       89 GETUPVAL                         R8 5
       90 MOVE                             R9 R7
       91 CALL                             R8 1 0
       92 JUMP                             ; [+3]
       93 GETUPVAL                         R5 5
       94 LOADNIL                          R6
       95 CALL                             R5 1 0
       96 GETTABLEKS                       R5 R0 K2 ["key"]
       98 JUMPIFEQKNIL                     R5 ; [+22]
      100 JUMPIFEQKNIL                     R2 ; [+20]
      102 GETUPVAL                         R5 6
      103 GETTABLEKS                       R5 R5 K17 ["error"]
      105 LOADK                            R6 K18 ["Child element received a \"key\" prop (\"%s\") in addition to a key in the \"children\" table of its parent (\"%s\"). Please provide only one key definition. When both are present, the \"key\" prop will take precedence.%s%s See https://reactjs.org/link/warning-keys for more information."]
      106 GETTABLEKS                       R8 R0 K2 ["key"]
      108 FASTCALL1                        TOSTRING R8 ; [+2]
      109 GETIMPORT                        R7 K12 [tostring]
      111 CALL                             R7 1 1
      112 FASTCALL1                        TOSTRING R2 ; [+3]
      113 MOVE                             R9 R2
      114 GETIMPORT                        R8 K12 [tostring]
      116 CALL                             R8 1 1
      117 MOVE                             R9 R3
      118 MOVE                             R10 R4
      119 CALL                             R5 5 0
      120 JUMP                             ; [+7]
      121 GETUPVAL                         R5 6
      122 GETTABLEKS                       R5 R5 K17 ["error"]
      124 LOADK                            R6 K19 ["Each child in a list should have a unique \"key\" prop.%s%s See https://reactjs.org/link/warning-keys for more information."]
      125 MOVE                             R7 R3
      126 MOVE                             R8 R4
      127 CALL                             R5 3 0
      128 GETIMPORT                        R5 K14 [_G]
      130 GETTABLEKS                       R5 R5 K15 ["__DEV__"]
      132 JUMPIFNOT                        R5 ; [+3]
      133 GETUPVAL                         R5 5
      134 LOADNIL                          R6
      135 CALL                             R5 1 0
      136 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["isArray"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R2 ; [+15]
       14 LOADN                            R4 1
       15 LENGTH                           R2 R0
       16 LOADN                            R3 1
       17 FORNPREP                         R2
       18 GETTABLE                         R5 R0 R4
       19 GETUPVAL                         R6 1
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 JUMPIFNOT                        R6 ; [+4]
       23 GETUPVAL                         R6 2
       24 MOVE                             R7 R5
       25 MOVE                             R8 R1
       26 CALL                             R6 2 0
       27 FORNLOOP                         R2
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 1
       30 MOVE                             R3 R0
       31 CALL                             R2 1 1
       32 JUMPIFNOT                        R2 ; [+9]
       33 GETTABLEKS                       R2 R0 K4 ["_store"]
       35 JUMPIFNOT                        R2 ; [+47]
       36 GETTABLEKS                       R2 R0 K4 ["_store"]
       38 LOADB                            R3 1
       39 SETTABLEKS                       R3 R2 K5 ["validated"]
       41 RETURN                           R0 0
       42 JUMPIFNOT                        R0 ; [+40]
       43 GETUPVAL                         R2 3
       44 MOVE                             R3 R0
       45 CALL                             R2 1 1
       46 FASTCALL1                        TYPEOF R2 ; [+3]
       47 MOVE                             R4 R2
       48 GETIMPORT                        R3 K1 [typeof]
       50 CALL                             R3 1 1
       51 JUMPIFNOTEQKS                    R3 K6 ["function"] ; [+31]
       53 GETTABLEKS                       R3 R0 K7 ["entries"]
       55 JUMPIFEQ                         R2 R3 ; [+27]
       57 MOVE                             R3 R2
       58 MOVE                             R4 R0
       59 CALL                             R3 1 1
       60 GETTABLEKS                       R4 R3 K8 ["next"]
       62 CALL                             R4 0 1
       63 GETTABLEKS                       R5 R4 K9 ["done"]
       65 JUMPIF                           R5 ; [+17]
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R6 R4 K10 ["value"]
       69 CALL                             R5 1 1
       70 JUMPIFNOT                        R5 ; [+7]
       71 GETUPVAL                         R5 2
       72 GETTABLEKS                       R6 R4 K10 ["value"]
       74 MOVE                             R7 R1
       75 GETTABLEKS                       R8 R4 K11 ["key"]
       77 CALL                             R5 3 0
       78 GETTABLEKS                       R5 R3 K8 ["next"]
       80 CALL                             R5 0 1
       81 MOVE                             R4 R5
       82 JUMPBACK                         ; [-20]
       83 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIF                           R1 ; [+5]
        5 GETIMPORT                        R1 K1 [_G]
        7 GETTABLEKS                       R1 R1 K3 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        9 JUMPIFNOT                        R1 ; [+76]
       10 GETTABLEKS                       R1 R0 K4 ["type"]
       12 JUMPIFEQKNIL                     R1 ; [+8]
       14 FASTCALL1                        TYPEOF R1 ; [+3]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K6 [typeof]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K7 ["string"] ; [+2]
       21 RETURN                           R0 0
       22 LOADNIL                          R2
       23 LOADNIL                          R3
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R4 K6 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKS                    R4 K8 ["function"] ; [+2]
       31 RETURN                           R0 0
       32 FASTCALL1                        TYPEOF R1 ; [+3]
       33 MOVE                             R5 R1
       34 GETIMPORT                        R4 K6 [typeof]
       36 CALL                             R4 1 1
       37 JUMPIFNOTEQKS                    R4 K9 ["table"] ; [+6]
       39 GETTABLEKS                       R2 R1 K10 ["propTypes"]
       41 GETTABLEKS                       R3 R1 K11 ["validateProps"]
       43 JUMP                             ; [+1]
       44 RETURN                           R0 0
       45 JUMPIF                           R2 ; [+1]
       46 JUMPIFNOT                        R3 ; [+13]
       47 GETUPVAL                         R4 0
       48 MOVE                             R5 R1
       49 CALL                             R4 1 1
       50 GETUPVAL                         R5 1
       51 MOVE                             R6 R2
       52 MOVE                             R7 R3
       53 GETTABLEKS                       R8 R0 K12 ["props"]
       55 LOADK                            R9 K13 ["prop"]
       56 MOVE                             R10 R4
       57 MOVE                             R11 R0
       58 CALL                             R5 6 0
       59 JUMP                             ; [+17]
       60 GETTABLEKS                       R4 R1 K14 ["PropTypes"]
       62 JUMPIFEQKNIL                     R4 ; [+14]
       64 GETUPVAL                         R4 2
       65 JUMPIF                           R4 ; [+11]
       66 LOADB                            R4 1
       67 SETUPVAL                         R4 2
       68 GETUPVAL                         R4 0
       69 MOVE                             R5 R1
       70 CALL                             R4 1 1
       71 GETUPVAL                         R5 3
       72 GETTABLEKS                       R5 R5 K15 ["error"]
       74 LOADK                            R6 K16 ["Component %s declared `PropTypes` instead of `propTypes`. Did you misspell the property assignment?"]
       75 ORK                              R7 R4 K17 ["Unknown"]
       76 CALL                             R5 2 0
       77 GETTABLEKS                       R4 R1 K18 ["getDefaultProps"]
       79 JUMPIFEQKNIL                     R4 ; [+6]
       81 GETUPVAL                         R4 3
       82 GETTABLEKS                       R4 R4 K15 ["error"]
       84 LOADK                            R5 K19 ["getDefaultProps is only used on classic React.createClass definitions. Use a static property named `defaultProps` instead."]
       85 CALL                             R4 1 0
       86 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+100]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["keys"]
        8 GETTABLEKS                       R2 R0 K4 ["props"]
       10 CALL                             R1 1 1
       11 LOADN                            R4 1
       12 LENGTH                           R2 R1
       13 LOADN                            R3 1
       14 FORNPREP                         R2
       15 GETTABLE                         R5 R1 R4
       16 JUMPIFEQKS                       R5 K5 ["children"] ; [+44]
       18 JUMPIFEQKS                       R5 K6 ["key"] ; [+42]
       20 GETIMPORT                        R6 K1 [_G]
       22 GETTABLEKS                       R6 R6 K2 ["__DEV__"]
       24 JUMPIFNOT                        R6 ; [+21]
       25 JUMPIFNOT                        R0 ; [+17]
       26 GETTABLEKS                       R6 R0 K7 ["_owner"]
       28 LOADNIL                          R7
       29 JUMPIFNOT                        R6 ; [+2]
       30 GETTABLEKS                       R7 R6 K8 ["type"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R9 R0 K8 ["type"]
       35 GETTABLEKS                       R10 R0 K9 ["_source"]
       37 MOVE                             R11 R7
       38 CALL                             R8 3 1
       39 GETUPVAL                         R9 2
       40 MOVE                             R10 R8
       41 CALL                             R9 1 0
       42 JUMP                             ; [+3]
       43 GETUPVAL                         R6 2
       44 LOADNIL                          R7
       45 CALL                             R6 1 0
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K10 ["error"]
       49 LOADK                            R7 K11 ["Invalid prop `%s` supplied to `React.Fragment`. React.Fragment can only have `key` and `children` props."]
       50 MOVE                             R8 R5
       51 CALL                             R6 2 0
       52 GETIMPORT                        R6 K1 [_G]
       54 GETTABLEKS                       R6 R6 K2 ["__DEV__"]
       56 JUMPIFNOT                        R6 ; [+5]
       57 GETUPVAL                         R6 2
       58 LOADNIL                          R7
       59 CALL                             R6 1 0
       60 JUMP                             ; [+1]
       61 FORNLOOP                         R2
       62 GETTABLEKS                       R2 R0 K12 ["ref"]
       64 JUMPIFEQKNIL                     R2 ; [+40]
       66 GETIMPORT                        R2 K1 [_G]
       68 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
       70 JUMPIFNOT                        R2 ; [+21]
       71 JUMPIFNOT                        R0 ; [+17]
       72 GETTABLEKS                       R2 R0 K7 ["_owner"]
       74 LOADNIL                          R3
       75 JUMPIFNOT                        R2 ; [+2]
       76 GETTABLEKS                       R3 R2 K8 ["type"]
       78 GETUPVAL                         R4 1
       79 GETTABLEKS                       R5 R0 K8 ["type"]
       81 GETTABLEKS                       R6 R0 K9 ["_source"]
       83 MOVE                             R7 R3
       84 CALL                             R4 3 1
       85 GETUPVAL                         R5 2
       86 MOVE                             R6 R4
       87 CALL                             R5 1 0
       88 JUMP                             ; [+3]
       89 GETUPVAL                         R2 2
       90 LOADNIL                          R3
       91 CALL                             R2 1 0
       92 GETUPVAL                         R2 3
       93 GETTABLEKS                       R2 R2 K10 ["error"]
       95 LOADK                            R3 K13 ["Invalid attribute `ref` supplied to `React.Fragment`."]
       96 CALL                             R2 1 0
       97 GETIMPORT                        R2 K1 [_G]
       99 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
      101 JUMPIFNOT                        R2 ; [+3]
      102 GETUPVAL                         R2 2
      103 LOADNIL                          R3
      104 CALL                             R2 1 0
      105 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 CALL                             R6 1 1
        3 JUMPIF                           R6 ; [+128]
        4 LOADK                            R7 K0 [""]
        5 JUMPIFEQKNIL                     R0 ; [+16]
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R9 R0
        9 GETIMPORT                        R8 K2 [typeof]
       11 CALL                             R8 1 1
       12 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+12]
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K4 ["keys"]
       17 MOVE                             R10 R0
       18 CALL                             R9 1 1
       19 LENGTH                           R8 R9
       20 JUMPIFNOTEQKN                    R8 K5 [0] ; [+4]
       22 MOVE                             R8 R7
       23 LOADK                            R9 K6 [" You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports."]
       24 CONCAT                           R7 R8 R9
       25 JUMPIFEQKNIL                     R4 ; [+17]
       27 GETIMPORT                        R9 K9 [string.gsub]
       29 GETTABLEKS                       R10 R4 K10 ["fileName"]
       31 LOADK                            R11 K11 ["^.*[\\/]"]
       32 LOADK                            R12 K0 [""]
       33 CALL                             R9 3 1
       34 GETTABLEKS                       R10 R4 K12 ["lineNumber"]
       36 LOADK                            R11 K13 ["\n\nCheck your code at "]
       37 MOVE                             R12 R9
       38 LOADK                            R13 K14 [":"]
       39 MOVE                             R14 R10
       40 LOADK                            R15 K15 ["."]
       41 CONCAT                           R8 R11 R15
       42 JUMP                             ; [+1]
       43 LOADK                            R8 K0 [""]
       44 JUMPIFNOT                        R8 ; [+4]
       45 MOVE                             R9 R7
       46 MOVE                             R10 R8
       47 CONCAT                           R7 R9 R10
       48 JUMP                             ; [+20]
       49 MOVE                             R9 R7
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R11 R11 K16 ["current"]
       53 JUMPIFNOT                        R11 ; [+13]
       54 GETUPVAL                         R11 3
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K16 ["current"]
       58 GETTABLEKS                       R12 R12 K17 ["type"]
       60 CALL                             R11 1 1
       61 JUMPIFNOT                        R11 ; [+5]
       62 LOADK                            R12 K18 ["\n\nCheck the render method of `"]
       63 MOVE                             R13 R11
       64 LOADK                            R14 K19 ["`."]
       65 CONCAT                           R10 R12 R14
       66 JUMP                             ; [+1]
       67 LOADK                            R10 K0 [""]
       68 CONCAT                           R7 R9 R10
       69 LOADNIL                          R9
       70 JUMPIFNOTEQKNIL                  R0 ; [+3]
       72 LOADK                            R9 K20 ["nil"]
       73 JUMP                             ; [+46]
       74 GETUPVAL                         R10 4
       75 GETTABLEKS                       R10 R10 K21 ["isArray"]
       77 MOVE                             R11 R0
       78 CALL                             R10 1 1
       79 JUMPIFNOT                        R10 ; [+2]
       80 LOADK                            R9 K22 ["array"]
       81 JUMP                             ; [+38]
       82 FASTCALL1                        TYPEOF R0 ; [+3]
       83 MOVE                             R11 R0
       84 GETIMPORT                        R10 K2 [typeof]
       86 CALL                             R10 1 1
       87 JUMPIFNOTEQKS                    R10 K3 ["table"] ; [+20]
       89 GETTABLEKS                       R10 R0 K23 ["$$typeof"]
       91 GETUPVAL                         R11 5
       92 JUMPIFNOTEQ                      R10 R11 ; [+15]
       94 GETIMPORT                        R10 K25 [string.format]
       96 LOADK                            R11 K26 ["<%s />"]
       97 GETUPVAL                         R13 3
       98 GETTABLEKS                       R14 R0 K17 ["type"]
      100 CALL                             R13 1 1
      101 ORK                              R12 R13 K27 ["Unknown"]
      102 CALL                             R10 2 1
      103 MOVE                             R9 R10
      104 MOVE                             R10 R7
      105 LOADK                            R11 K28 [" Did you accidentally export a JSX literal or Element instead of a component?"]
      106 CONCAT                           R7 R10 R11
      107 JUMP                             ; [+12]
      108 FASTCALL1                        TYPEOF R0 ; [+3]
      109 MOVE                             R11 R0
      110 GETIMPORT                        R10 K2 [typeof]
      112 CALL                             R10 1 1
      113 MOVE                             R9 R10
      114 MOVE                             R10 R7
      115 LOADK                            R11 K29 ["\n"]
      116 GETUPVAL                         R12 6
      117 MOVE                             R13 R0
      118 CALL                             R12 1 1
      119 CONCAT                           R7 R10 R12
      120 GETIMPORT                        R10 K31 [_G]
      122 GETTABLEKS                       R10 R10 K32 ["__DEV__"]
      124 JUMPIFNOT                        R10 ; [+7]
      125 GETUPVAL                         R10 7
      126 GETTABLEKS                       R10 R10 K33 ["error"]
      128 LOADK                            R11 K34 ["React.jsx: type is invalid -- expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s"]
      129 MOVE                             R12 R9
      130 MOVE                             R13 R7
      131 CALL                             R10 3 0
      132 GETUPVAL                         R7 8
      133 MOVE                             R8 R0
      134 MOVE                             R9 R1
      135 MOVE                             R10 R2
      136 MOVE                             R11 R4
      137 MOVE                             R12 R5
      138 CALL                             R7 5 1
      139 JUMPIFNOTEQKNIL                  R7 ; [+2]
      141 RETURN                           R7 1
      142 JUMPIFNOT                        R6 ; [+41]
      143 GETTABLEKS                       R8 R1 K35 ["children"]
      145 JUMPIFEQKNIL                     R8 ; [+38]
      147 JUMPIFNOT                        R3 ; [+32]
      148 GETUPVAL                         R9 4
      149 GETTABLEKS                       R9 R9 K21 ["isArray"]
      151 MOVE                             R10 R8
      152 CALL                             R9 1 1
      153 JUMPIFNOT                        R9 ; [+15]
      154 LOADN                            R11 1
      155 LENGTH                           R9 R8
      156 LOADN                            R10 1
      157 FORNPREP                         R9
      158 GETUPVAL                         R12 9
      159 GETTABLE                         R13 R8 R11
      160 MOVE                             R14 R0
      161 CALL                             R12 2 0
      162 FORNLOOP                         R9
      163 GETUPVAL                         R9 1
      164 GETTABLEKS                       R9 R9 K36 ["freeze"]
      166 MOVE                             R10 R8
      167 CALL                             R9 1 0
      168 JUMP                             ; [+15]
      169 GETIMPORT                        R9 K31 [_G]
      171 GETTABLEKS                       R9 R9 K32 ["__DEV__"]
      173 JUMPIFNOT                        R9 ; [+10]
      174 GETUPVAL                         R9 7
      175 GETTABLEKS                       R9 R9 K33 ["error"]
      177 LOADK                            R10 K37 ["React.jsx: Static children should always be an array. You are likely explicitly calling React.jsxs or React.jsxDEV. Use the Babel transform instead."]
      178 CALL                             R9 1 0
      179 JUMP                             ; [+4]
      180 GETUPVAL                         R9 9
      181 MOVE                             R10 R8
      182 MOVE                             R11 R0
      183 CALL                             R9 2 0
      184 GETIMPORT                        R8 K31 [_G]
      186 GETTABLEKS                       R8 R8 K32 ["__DEV__"]
      188 JUMPIFNOT                        R8 ; [+18]
      189 GETUPVAL                         R8 10
      190 JUMPIFNOT                        R8 ; [+16]
      191 GETTABLEKS                       R9 R1 K38 ["key"]
      193 JUMPIFNOTEQKNIL                  R9 ; [+2]
      195 LOADB                            R8 0 +1
      196 LOADB                            R8 1
      197 JUMPIFNOT                        R8 ; [+9]
      198 GETUPVAL                         R8 7
      199 GETTABLEKS                       R8 R8 K33 ["error"]
      201 LOADK                            R9 K39 ["React.jsx: Spreading a key to JSX is a deprecated pattern. Explicitly pass a key after spreading props in your JSX call. E.g. <%s {...props} key={key} />"]
      202 GETUPVAL                         R11 3
      203 MOVE                             R12 R0
      204 CALL                             R11 1 1
      205 ORK                              R10 R11 K40 ["ComponentName"]
      206 CALL                             R8 2 0
      207 GETUPVAL                         R8 11
      208 JUMPIFNOTEQ                      R0 R8 ; [+5]
      210 GETUPVAL                         R8 12
      211 MOVE                             R9 R7
      212 CALL                             R8 1 0
      213 RETURN                           R7 1
      214 GETUPVAL                         R8 13
      215 MOVE                             R9 R7
      216 CALL                             R8 1 0
      217 RETURN                           R7 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 LOADB                            R7 1
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 LOADB                            R7 0
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_13:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIF                           R2 ; [+138]
        5 LOADK                            R3 K0 [""]
        6 JUMPIFEQKNIL                     R0 ; [+16]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K2 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+12]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["keys"]
       18 MOVE                             R6 R0
       19 CALL                             R5 1 1
       20 LENGTH                           R4 R5
       21 JUMPIFNOTEQKN                    R4 K5 [0] ; [+4]
       23 MOVE                             R4 R3
       24 LOADK                            R5 K6 [" You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports."]
       25 CONCAT                           R3 R4 R5
       26 JUMPIFEQKNIL                     R1 ; [+23]
       28 GETTABLEKS                       R5 R1 K7 ["__source"]
       30 JUMPIFEQKNIL                     R5 ; [+17]
       32 GETIMPORT                        R6 K10 [string.gsub]
       34 GETTABLEKS                       R7 R5 K11 ["fileName"]
       36 LOADK                            R8 K12 ["^.*[\\/]"]
       37 LOADK                            R9 K0 [""]
       38 CALL                             R6 3 1
       39 GETTABLEKS                       R7 R5 K13 ["lineNumber"]
       41 LOADK                            R8 K14 ["\n\nCheck your code at "]
       42 MOVE                             R9 R6
       43 LOADK                            R10 K15 [":"]
       44 MOVE                             R11 R7
       45 LOADK                            R12 K16 ["."]
       46 CONCAT                           R4 R8 R12
       47 JUMP                             ; [+3]
       48 LOADK                            R4 K0 [""]
       49 JUMP                             ; [+1]
       50 LOADK                            R4 K0 [""]
       51 JUMPIFNOT                        R4 ; [+4]
       52 MOVE                             R5 R3
       53 MOVE                             R6 R4
       54 CONCAT                           R3 R5 R6
       55 JUMP                             ; [+20]
       56 MOVE                             R5 R3
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K17 ["current"]
       60 JUMPIFNOT                        R7 ; [+13]
       61 GETUPVAL                         R7 3
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R8 R8 K17 ["current"]
       65 GETTABLEKS                       R8 R8 K18 ["type"]
       67 CALL                             R7 1 1
       68 JUMPIFNOT                        R7 ; [+5]
       69 LOADK                            R8 K19 ["\n\nCheck the render method of `"]
       70 MOVE                             R9 R7
       71 LOADK                            R10 K20 ["`."]
       72 CONCAT                           R6 R8 R10
       73 JUMP                             ; [+1]
       74 LOADK                            R6 K0 [""]
       75 CONCAT                           R3 R5 R6
       76 LOADNIL                          R5
       77 JUMPIFNOTEQKNIL                  R0 ; [+3]
       79 LOADK                            R5 K21 ["nil"]
       80 JUMP                             ; [+50]
       81 GETUPVAL                         R6 4
       82 GETTABLEKS                       R6 R6 K22 ["isArray"]
       84 MOVE                             R7 R0
       85 CALL                             R6 1 1
       86 JUMPIFNOT                        R6 ; [+2]
       87 LOADK                            R5 K23 ["array"]
       88 JUMP                             ; [+42]
       89 JUMPIFEQKNIL                     R0 ; [+27]
       91 FASTCALL1                        TYPEOF R0 ; [+3]
       92 MOVE                             R7 R0
       93 GETIMPORT                        R6 K2 [typeof]
       95 CALL                             R6 1 1
       96 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+20]
       98 GETTABLEKS                       R6 R0 K24 ["$$typeof"]
      100 GETUPVAL                         R7 5
      101 JUMPIFNOTEQ                      R6 R7 ; [+15]
      103 GETIMPORT                        R6 K26 [string.format]
      105 LOADK                            R7 K27 ["<%s />"]
      106 GETUPVAL                         R9 3
      107 GETTABLEKS                       R10 R0 K18 ["type"]
      109 CALL                             R9 1 1
      110 ORK                              R8 R9 K28 ["Unknown"]
      111 CALL                             R6 2 1
      112 MOVE                             R5 R6
      113 MOVE                             R6 R3
      114 LOADK                            R7 K29 [" Did you accidentally export a JSX literal or Element instead of a component?"]
      115 CONCAT                           R3 R6 R7
      116 JUMP                             ; [+14]
      117 FASTCALL1                        TYPEOF R0 ; [+3]
      118 MOVE                             R7 R0
      119 GETIMPORT                        R6 K2 [typeof]
      121 CALL                             R6 1 1
      122 MOVE                             R5 R6
      123 JUMPIFEQKNIL                     R0 ; [+7]
      125 MOVE                             R6 R3
      126 LOADK                            R7 K30 ["\n"]
      127 GETUPVAL                         R8 6
      128 MOVE                             R9 R0
      129 CALL                             R8 1 1
      130 CONCAT                           R3 R6 R8
      131 GETIMPORT                        R6 K32 [_G]
      133 GETTABLEKS                       R6 R6 K33 ["__DEV__"]
      135 JUMPIFNOT                        R6 ; [+7]
      136 GETUPVAL                         R6 7
      137 GETTABLEKS                       R6 R6 K34 ["error"]
      139 LOADK                            R7 K35 ["React.createElement: type is invalid -- expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s"]
      140 MOVE                             R8 R5
      141 MOVE                             R9 R3
      142 CALL                             R6 3 0
      143 GETUPVAL                         R3 8
      144 MOVE                             R4 R0
      145 MOVE                             R5 R1
      146 GETVARARGS                       R6 -1
      147 CALL                             R3 -1 1
      148 JUMPIFNOTEQKNIL                  R3 ; [+2]
      150 RETURN                           R3 1
      151 JUMPIFNOT                        R2 ; [+20]
      152 LOADN                            R6 1
      153 LOADK                            R8 K36 ["#"]
      154 FASTCALL1                        SELECT_VARARG R8 ; [+3]
      155 GETIMPORT                        R7 K38 [select]
      157 GETVARARGS                       R9 -1
      158 CALL                             R7 -1 1
      159 MOVE                             R4 R7
      160 LOADN                            R5 1
      161 FORNPREP                         R4
      162 GETUPVAL                         R7 9
      163 FASTCALL1                        SELECT_VARARG R6 ; [+4]
      164 GETIMPORT                        R8 K38 [select]
      166 MOVE                             R9 R6
      167 GETVARARGS                       R10 -1
      168 CALL                             R8 -1 1
      169 MOVE                             R9 R0
      170 CALL                             R7 2 0
      171 FORNLOOP                         R4
      172 GETUPVAL                         R4 10
      173 JUMPIFNOTEQ                      R0 R4 ; [+5]
      175 GETUPVAL                         R4 11
      176 MOVE                             R5 R3
      177 CALL                             R4 1 0
      178 RETURN                           R3 1
      179 GETUPVAL                         R4 12
      180 MOVE                             R5 R3
      181 CALL                             R4 1 0
      182 RETURN                           R3 1

PROTO_14:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 2
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETVARARGS                       R5 -1
        6 SETLIST                          R2 R3 -1 [1]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 GETVARARGS                       R6 -1
       12 CALL                             R3 -1 1
       13 LOADN                            R6 3
       14 LENGTH                           R4 R2
       15 LOADN                            R5 1
       16 FORNPREP                         R4
       17 GETUPVAL                         R7 1
       18 GETTABLE                         R8 R2 R6
       19 GETTABLEKS                       R9 R3 K0 ["type"]
       21 CALL                             R7 2 0
       22 FORNLOOP                         R4
       23 GETUPVAL                         R4 2
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K9 ["Shared"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R5 R5 K10 ["console"]
       25 GETTABLEKS                       R6 R1 K11 ["util"]
       27 GETTABLEKS                       R6 R6 K12 ["inspect"]
       29 GETIMPORT                        R7 K4 [require]
       31 GETTABLEKS                       R8 R0 K9 ["Shared"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K4 [require]
       36 GETTABLEKS                       R9 R0 K9 ["Shared"]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R8 R8 K13 ["isValidElementType"]
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R0 K9 ["Shared"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R9 R9 K14 ["getComponentName"]
       48 GETIMPORT                        R10 K4 [require]
       50 GETTABLEKS                       R11 R0 K9 ["Shared"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R10 R10 K15 ["ReactSymbols"]
       55 GETTABLEKS                       R11 R10 K16 ["getIteratorFn"]
       57 GETTABLEKS                       R12 R10 K17 ["REACT_FORWARD_REF_TYPE"]
       59 GETTABLEKS                       R13 R10 K18 ["REACT_MEMO_TYPE"]
       61 GETTABLEKS                       R14 R10 K19 ["REACT_FRAGMENT_TYPE"]
       63 GETTABLEKS                       R15 R10 K20 ["REACT_ELEMENT_TYPE"]
       65 GETIMPORT                        R16 K4 [require]
       67 GETTABLEKS                       R17 R0 K9 ["Shared"]
       69 CALL                             R16 1 1
       70 GETTABLEKS                       R16 R16 K21 ["ReactFeatureFlags"]
       72 GETTABLEKS                       R16 R16 K22 ["warnAboutSpreadingKeyToJSX"]
       74 GETIMPORT                        R17 K4 [require]
       76 GETTABLEKS                       R18 R0 K9 ["Shared"]
       78 CALL                             R17 1 1
       79 GETTABLEKS                       R17 R17 K23 ["checkPropTypes"]
       81 GETIMPORT                        R18 K4 [require]
       83 GETTABLEKS                       R19 R0 K9 ["Shared"]
       85 CALL                             R18 1 1
       86 GETTABLEKS                       R18 R18 K24 ["ReactSharedInternals"]
       88 GETTABLEKS                       R18 R18 K25 ["ReactCurrentOwner"]
       90 GETIMPORT                        R19 K4 [require]
       92 GETIMPORT                        R20 K1 [script]
       94 GETTABLEKS                       R20 R20 K2 ["Parent"]
       96 GETTABLEKS                       R20 R20 K26 ["ReactElement"]
       98 CALL                             R19 1 1
       99 GETTABLEKS                       R20 R19 K27 ["isValidElement"]
      101 GETTABLEKS                       R21 R19 K28 ["createElement"]
      103 GETTABLEKS                       R22 R19 K29 ["cloneElement"]
      105 GETTABLEKS                       R23 R19 K30 ["jsxDEV"]
      107 GETIMPORT                        R24 K4 [require]
      109 GETTABLEKS                       R25 R0 K9 ["Shared"]
      111 CALL                             R24 1 1
      112 GETTABLEKS                       R24 R24 K24 ["ReactSharedInternals"]
      114 GETTABLEKS                       R24 R24 K31 ["ReactDebugCurrentFrame"]
      116 GETTABLEKS                       R24 R24 K32 ["setExtraStackFrame"]
      118 GETIMPORT                        R25 K4 [require]
      120 GETTABLEKS                       R26 R0 K9 ["Shared"]
      122 CALL                             R25 1 1
      123 GETTABLEKS                       R25 R25 K33 ["ReactComponentStackFrame"]
      125 GETTABLEKS                       R25 R25 K34 ["describeUnknownElementTypeFrameInDEV"]
      127 NEWTABLE                         R26 8 0
      129 DUPCLOSURE                       R27 K35 [PROTO_0]
      130 CAPTURE                          VAL R25
      131 CAPTURE                          VAL R24
      132 LOADNIL                          R28
      133 GETIMPORT                        R29 K37 [_G]
      135 GETTABLEKS                       R29 R29 K38 ["__DEV__"]
      137 JUMPIFNOT                        R29 ; [+1]
      138 LOADB                            R28 0
      139 DUPCLOSURE                       R29 K39 [PROTO_1]
      140 DUPCLOSURE                       R30 K40 [PROTO_2]
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R9
      143 DUPCLOSURE                       R31 K41 [PROTO_3]
      144 DUPCLOSURE                       R32 K42 [PROTO_4]
      145 NEWTABLE                         R33 0 0
      147 DUPCLOSURE                       R34 K43 [PROTO_5]
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R3
      151 DUPCLOSURE                       R35 K44 [PROTO_6]
      152 CAPTURE                          VAL R34
      153 CAPTURE                          VAL R33
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R25
      157 CAPTURE                          VAL R24
      158 CAPTURE                          VAL R5
      159 DUPCLOSURE                       R36 K45 [PROTO_7]
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R35
      163 CAPTURE                          VAL R11
      164 NEWCLOSURE                       R37 P8
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R17
      167 CAPTURE                          REF R28
      168 CAPTURE                          VAL R5
      169 DUPCLOSURE                       R38 K46 [PROTO_9]
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R5
      174 DUPCLOSURE                       R39 K47 [PROTO_10]
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R36
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R38
      188 CAPTURE                          VAL R37
      189 SETTABLEKS                       R39 R26 K48 ["jsxWithValidation"]
      191 DUPCLOSURE                       R40 K49 [PROTO_11]
      192 CAPTURE                          VAL R39
      193 SETTABLEKS                       R40 R26 K50 ["jsxWithValidationStatic"]
      195 DUPCLOSURE                       R40 K51 [PROTO_12]
      196 CAPTURE                          VAL R39
      197 SETTABLEKS                       R40 R26 K52 ["jsxWithValidationDynamic"]
      199 DUPCLOSURE                       R40 K53 [PROTO_13]
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R21
      209 CAPTURE                          VAL R36
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R38
      212 CAPTURE                          VAL R37
      213 SETTABLEKS                       R40 R26 K54 ["createElementWithValidation"]
      215 DUPCLOSURE                       R41 K55 [PROTO_14]
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R36
      218 CAPTURE                          VAL R37
      219 SETTABLEKS                       R41 R26 K56 ["cloneElementWithValidation"]
      221 CLOSEUPVALS                      R28
      222 RETURN                           R26 1
