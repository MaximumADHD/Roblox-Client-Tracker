PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+21]
        4 JUMPIFNOT                        R0 ; [+17]
        5 GETTABLEKS                       R1 R0 K1 ["_owner"]
        7 LOADNIL                          R2
        8 JUMPIFNOT                        R1 ; [+2]
        9 GETTABLEKS                       R2 R1 K2 ["type"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R4 R0 K2 ["type"]
       14 GETTABLEKS                       R5 R0 K3 ["_source"]
       16 MOVE                             R6 R2
       17 CALL                             R3 3 1
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 LOADNIL                          R2
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

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
       65 GETUPVAL                         R5 4
       66 GETTABLEKS                       R5 R5 K13 ["__DEV__"]
       68 JUMPIFNOT                        R5 ; [+64]
       69 GETUPVAL                         R5 4
       70 GETTABLEKS                       R5 R5 K13 ["__DEV__"]
       72 JUMPIFNOT                        R5 ; [+21]
       73 JUMPIFNOT                        R0 ; [+17]
       74 GETTABLEKS                       R5 R0 K4 ["_owner"]
       76 LOADNIL                          R6
       77 JUMPIFNOT                        R5 ; [+2]
       78 GETTABLEKS                       R6 R5 K10 ["type"]
       80 GETUPVAL                         R7 5
       81 GETTABLEKS                       R8 R0 K10 ["type"]
       83 GETTABLEKS                       R9 R0 K14 ["_source"]
       85 MOVE                             R10 R6
       86 CALL                             R7 3 1
       87 GETUPVAL                         R8 6
       88 MOVE                             R9 R7
       89 CALL                             R8 1 0
       90 JUMP                             ; [+3]
       91 GETUPVAL                         R5 6
       92 LOADNIL                          R6
       93 CALL                             R5 1 0
       94 GETTABLEKS                       R5 R0 K2 ["key"]
       96 JUMPIFEQKNIL                     R5 ; [+22]
       98 JUMPIFEQKNIL                     R2 ; [+20]
      100 GETUPVAL                         R5 7
      101 GETTABLEKS                       R5 R5 K15 ["error"]
      103 LOADK                            R6 K16 ["Child element received a \"key\" prop (\"%s\") in addition to a key in the \"children\" table of its parent (\"%s\"). Please provide only one key definition. When both are present, the \"key\" prop will take precedence.%s%s See https://reactjs.org/link/warning-keys for more information."]
      104 GETTABLEKS                       R8 R0 K2 ["key"]
      106 FASTCALL1                        TOSTRING R8 ; [+2]
      107 GETIMPORT                        R7 K12 [tostring]
      109 CALL                             R7 1 1
      110 FASTCALL1                        TOSTRING R2 ; [+3]
      111 MOVE                             R9 R2
      112 GETIMPORT                        R8 K12 [tostring]
      114 CALL                             R8 1 1
      115 MOVE                             R9 R3
      116 MOVE                             R10 R4
      117 CALL                             R5 5 0
      118 JUMP                             ; [+7]
      119 GETUPVAL                         R5 7
      120 GETTABLEKS                       R5 R5 K15 ["error"]
      122 LOADK                            R6 K17 ["Each child in a list should have a unique \"key\" prop.%s%s See https://reactjs.org/link/warning-keys for more information."]
      123 MOVE                             R7 R3
      124 MOVE                             R8 R4
      125 CALL                             R5 3 0
      126 GETUPVAL                         R5 4
      127 GETTABLEKS                       R5 R5 K13 ["__DEV__"]
      129 JUMPIFNOT                        R5 ; [+3]
      130 GETUPVAL                         R5 6
      131 LOADNIL                          R6
      132 CALL                             R5 1 0
      133 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        7 JUMPIFNOT                        R1 ; [+76]
        8 GETTABLEKS                       R1 R0 K2 ["type"]
       10 JUMPIFEQKNIL                     R1 ; [+8]
       12 FASTCALL1                        TYPEOF R1 ; [+3]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K4 [typeof]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+2]
       19 RETURN                           R0 0
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R5 R1
       24 GETIMPORT                        R4 K4 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+2]
       29 RETURN                           R0 0
       30 FASTCALL1                        TYPEOF R1 ; [+3]
       31 MOVE                             R5 R1
       32 GETIMPORT                        R4 K4 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFNOTEQKS                    R4 K7 ["table"] ; [+6]
       37 GETTABLEKS                       R2 R1 K8 ["propTypes"]
       39 GETTABLEKS                       R3 R1 K9 ["validateProps"]
       41 JUMP                             ; [+1]
       42 RETURN                           R0 0
       43 JUMPIF                           R2 ; [+1]
       44 JUMPIFNOT                        R3 ; [+13]
       45 GETUPVAL                         R4 1
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 GETUPVAL                         R5 2
       49 MOVE                             R6 R2
       50 MOVE                             R7 R3
       51 GETTABLEKS                       R8 R0 K10 ["props"]
       53 LOADK                            R9 K11 ["prop"]
       54 MOVE                             R10 R4
       55 MOVE                             R11 R0
       56 CALL                             R5 6 0
       57 JUMP                             ; [+17]
       58 GETTABLEKS                       R4 R1 K12 ["PropTypes"]
       60 JUMPIFEQKNIL                     R4 ; [+14]
       62 GETUPVAL                         R4 3
       63 JUMPIF                           R4 ; [+11]
       64 LOADB                            R4 1
       65 SETUPVAL                         R4 3
       66 GETUPVAL                         R4 1
       67 MOVE                             R5 R1
       68 CALL                             R4 1 1
       69 GETUPVAL                         R5 4
       70 GETTABLEKS                       R5 R5 K13 ["error"]
       72 LOADK                            R6 K14 ["Component %s declared `PropTypes` instead of `propTypes`. Did you misspell the property assignment?"]
       73 ORK                              R7 R4 K15 ["Unknown"]
       74 CALL                             R5 2 0
       75 GETTABLEKS                       R4 R1 K16 ["getDefaultProps"]
       77 JUMPIFEQKNIL                     R4 ; [+6]
       79 GETUPVAL                         R4 4
       80 GETTABLEKS                       R4 R4 K13 ["error"]
       82 LOADK                            R5 K17 ["getDefaultProps is only used on classic React.createClass definitions. Use a static property named `defaultProps` instead."]
       83 CALL                             R4 1 0
       84 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+96]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["keys"]
        7 GETTABLEKS                       R2 R0 K2 ["props"]
        9 CALL                             R1 1 1
       10 LOADN                            R4 1
       11 LENGTH                           R2 R1
       12 LOADN                            R3 1
       13 FORNPREP                         R2
       14 GETTABLE                         R5 R1 R4
       15 JUMPIFEQKS                       R5 K3 ["children"] ; [+42]
       17 JUMPIFEQKS                       R5 K4 ["key"] ; [+40]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K0 ["__DEV__"]
       22 JUMPIFNOT                        R6 ; [+21]
       23 JUMPIFNOT                        R0 ; [+17]
       24 GETTABLEKS                       R6 R0 K5 ["_owner"]
       26 LOADNIL                          R7
       27 JUMPIFNOT                        R6 ; [+2]
       28 GETTABLEKS                       R7 R6 K6 ["type"]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R9 R0 K6 ["type"]
       33 GETTABLEKS                       R10 R0 K7 ["_source"]
       35 MOVE                             R11 R7
       36 CALL                             R8 3 1
       37 GETUPVAL                         R9 3
       38 MOVE                             R10 R8
       39 CALL                             R9 1 0
       40 JUMP                             ; [+3]
       41 GETUPVAL                         R6 3
       42 LOADNIL                          R7
       43 CALL                             R6 1 0
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K8 ["error"]
       47 LOADK                            R7 K9 ["Invalid prop `%s` supplied to `React.Fragment`. React.Fragment can only have `key` and `children` props."]
       48 MOVE                             R8 R5
       49 CALL                             R6 2 0
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K0 ["__DEV__"]
       53 JUMPIFNOT                        R6 ; [+5]
       54 GETUPVAL                         R6 3
       55 LOADNIL                          R7
       56 CALL                             R6 1 0
       57 JUMP                             ; [+1]
       58 FORNLOOP                         R2
       59 GETTABLEKS                       R2 R0 K10 ["ref"]
       61 JUMPIFEQKNIL                     R2 ; [+38]
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
       66 JUMPIFNOT                        R2 ; [+21]
       67 JUMPIFNOT                        R0 ; [+17]
       68 GETTABLEKS                       R2 R0 K5 ["_owner"]
       70 LOADNIL                          R3
       71 JUMPIFNOT                        R2 ; [+2]
       72 GETTABLEKS                       R3 R2 K6 ["type"]
       74 GETUPVAL                         R4 2
       75 GETTABLEKS                       R5 R0 K6 ["type"]
       77 GETTABLEKS                       R6 R0 K7 ["_source"]
       79 MOVE                             R7 R3
       80 CALL                             R4 3 1
       81 GETUPVAL                         R5 3
       82 MOVE                             R6 R4
       83 CALL                             R5 1 0
       84 JUMP                             ; [+3]
       85 GETUPVAL                         R2 3
       86 LOADNIL                          R3
       87 CALL                             R2 1 0
       88 GETUPVAL                         R2 4
       89 GETTABLEKS                       R2 R2 K8 ["error"]
       91 LOADK                            R3 K11 ["Invalid attribute `ref` supplied to `React.Fragment`."]
       92 CALL                             R2 1 0
       93 GETUPVAL                         R2 0
       94 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
       96 JUMPIFNOT                        R2 ; [+3]
       97 GETUPVAL                         R2 3
       98 LOADNIL                          R3
       99 CALL                             R2 1 0
      100 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 CALL                             R6 1 1
        3 JUMPIF                           R6 ; [+127]
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
      120 GETUPVAL                         R10 7
      121 GETTABLEKS                       R10 R10 K30 ["__DEV__"]
      123 JUMPIFNOT                        R10 ; [+7]
      124 GETUPVAL                         R10 8
      125 GETTABLEKS                       R10 R10 K31 ["error"]
      127 LOADK                            R11 K32 ["React.jsx: type is invalid -- expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s"]
      128 MOVE                             R12 R9
      129 MOVE                             R13 R7
      130 CALL                             R10 3 0
      131 GETUPVAL                         R7 9
      132 MOVE                             R8 R0
      133 MOVE                             R9 R1
      134 MOVE                             R10 R2
      135 MOVE                             R11 R4
      136 MOVE                             R12 R5
      137 CALL                             R7 5 1
      138 JUMPIFNOTEQKNIL                  R7 ; [+2]
      140 RETURN                           R7 1
      141 JUMPIFNOT                        R6 ; [+40]
      142 GETTABLEKS                       R8 R1 K33 ["children"]
      144 JUMPIFEQKNIL                     R8 ; [+37]
      146 JUMPIFNOT                        R3 ; [+31]
      147 GETUPVAL                         R9 4
      148 GETTABLEKS                       R9 R9 K21 ["isArray"]
      150 MOVE                             R10 R8
      151 CALL                             R9 1 1
      152 JUMPIFNOT                        R9 ; [+15]
      153 LOADN                            R11 1
      154 LENGTH                           R9 R8
      155 LOADN                            R10 1
      156 FORNPREP                         R9
      157 GETUPVAL                         R12 10
      158 GETTABLE                         R13 R8 R11
      159 MOVE                             R14 R0
      160 CALL                             R12 2 0
      161 FORNLOOP                         R9
      162 GETUPVAL                         R9 1
      163 GETTABLEKS                       R9 R9 K34 ["freeze"]
      165 MOVE                             R10 R8
      166 CALL                             R9 1 0
      167 JUMP                             ; [+14]
      168 GETUPVAL                         R9 7
      169 GETTABLEKS                       R9 R9 K30 ["__DEV__"]
      171 JUMPIFNOT                        R9 ; [+10]
      172 GETUPVAL                         R9 8
      173 GETTABLEKS                       R9 R9 K31 ["error"]
      175 LOADK                            R10 K35 ["React.jsx: Static children should always be an array. You are likely explicitly calling React.jsxs or React.jsxDEV. Use the Babel transform instead."]
      176 CALL                             R9 1 0
      177 JUMP                             ; [+4]
      178 GETUPVAL                         R9 10
      179 MOVE                             R10 R8
      180 MOVE                             R11 R0
      181 CALL                             R9 2 0
      182 GETUPVAL                         R8 7
      183 GETTABLEKS                       R8 R8 K30 ["__DEV__"]
      185 JUMPIFNOT                        R8 ; [+18]
      186 GETUPVAL                         R8 11
      187 JUMPIFNOT                        R8 ; [+16]
      188 GETTABLEKS                       R9 R1 K36 ["key"]
      190 JUMPIFNOTEQKNIL                  R9 ; [+2]
      192 LOADB                            R8 0 +1
      193 LOADB                            R8 1
      194 JUMPIFNOT                        R8 ; [+9]
      195 GETUPVAL                         R8 8
      196 GETTABLEKS                       R8 R8 K31 ["error"]
      198 LOADK                            R9 K37 ["React.jsx: Spreading a key to JSX is a deprecated pattern. Explicitly pass a key after spreading props in your JSX call. E.g. <%s {...props} key={key} />"]
      199 GETUPVAL                         R11 3
      200 MOVE                             R12 R0
      201 CALL                             R11 1 1
      202 ORK                              R10 R11 K38 ["ComponentName"]
      203 CALL                             R8 2 0
      204 GETUPVAL                         R8 12
      205 JUMPIFNOTEQ                      R0 R8 ; [+5]
      207 GETUPVAL                         R8 13
      208 MOVE                             R9 R7
      209 CALL                             R8 1 0
      210 RETURN                           R7 1
      211 GETUPVAL                         R8 14
      212 MOVE                             R9 R7
      213 CALL                             R8 1 0
      214 RETURN                           R7 1

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
        4 JUMPIF                           R2 ; [+137]
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
      131 GETUPVAL                         R6 7
      132 GETTABLEKS                       R6 R6 K31 ["__DEV__"]
      134 JUMPIFNOT                        R6 ; [+7]
      135 GETUPVAL                         R6 8
      136 GETTABLEKS                       R6 R6 K32 ["error"]
      138 LOADK                            R7 K33 ["React.createElement: type is invalid -- expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s"]
      139 MOVE                             R8 R5
      140 MOVE                             R9 R3
      141 CALL                             R6 3 0
      142 GETUPVAL                         R3 9
      143 MOVE                             R4 R0
      144 MOVE                             R5 R1
      145 GETVARARGS                       R6 -1
      146 CALL                             R3 -1 1
      147 JUMPIFNOTEQKNIL                  R3 ; [+2]
      149 RETURN                           R3 1
      150 JUMPIFNOT                        R2 ; [+20]
      151 LOADN                            R6 1
      152 LOADK                            R8 K34 ["#"]
      153 FASTCALL1                        SELECT_VARARG R8 ; [+3]
      154 GETIMPORT                        R7 K36 [select]
      156 GETVARARGS                       R9 -1
      157 CALL                             R7 -1 1
      158 MOVE                             R4 R7
      159 LOADN                            R5 1
      160 FORNPREP                         R4
      161 GETUPVAL                         R7 10
      162 FASTCALL1                        SELECT_VARARG R6 ; [+4]
      163 GETIMPORT                        R8 K36 [select]
      165 MOVE                             R9 R6
      166 GETVARARGS                       R10 -1
      167 CALL                             R8 -1 1
      168 MOVE                             R9 R0
      169 CALL                             R7 2 0
      170 FORNLOOP                         R4
      171 GETUPVAL                         R4 11
      172 JUMPIFNOTEQ                      R0 R4 ; [+5]
      174 GETUPVAL                         R4 12
      175 MOVE                             R5 R3
      176 CALL                             R4 1 0
      177 RETURN                           R3 1
      178 GETUPVAL                         R4 13
      179 MOVE                             R5 R3
      180 CALL                             R4 1 0
      181 RETURN                           R3 1

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
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Array"]
       19 GETTABLEKS                       R4 R2 K8 ["Boolean"]
       21 GETTABLEKS                       R5 R2 K9 ["Object"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Shared"]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R6 R6 K11 ["console"]
       30 GETTABLEKS                       R7 R2 K12 ["util"]
       32 GETTABLEKS                       R7 R7 K13 ["inspect"]
       34 GETIMPORT                        R8 K4 [require]
       36 GETTABLEKS                       R9 R0 K10 ["Shared"]
       38 CALL                             R8 1 1
       39 GETIMPORT                        R9 K4 [require]
       41 GETTABLEKS                       R10 R0 K10 ["Shared"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R9 R9 K14 ["isValidElementType"]
       46 GETIMPORT                        R10 K4 [require]
       48 GETTABLEKS                       R11 R0 K10 ["Shared"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R10 R10 K15 ["getComponentName"]
       53 GETIMPORT                        R11 K4 [require]
       55 GETTABLEKS                       R12 R0 K10 ["Shared"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R11 R11 K16 ["ReactSymbols"]
       60 GETTABLEKS                       R12 R11 K17 ["getIteratorFn"]
       62 GETTABLEKS                       R13 R11 K18 ["REACT_FORWARD_REF_TYPE"]
       64 GETTABLEKS                       R14 R11 K19 ["REACT_MEMO_TYPE"]
       66 GETTABLEKS                       R15 R11 K20 ["REACT_FRAGMENT_TYPE"]
       68 GETTABLEKS                       R16 R11 K21 ["REACT_ELEMENT_TYPE"]
       70 GETIMPORT                        R17 K4 [require]
       72 GETTABLEKS                       R18 R0 K10 ["Shared"]
       74 CALL                             R17 1 1
       75 GETTABLEKS                       R17 R17 K22 ["ReactFeatureFlags"]
       77 GETTABLEKS                       R17 R17 K23 ["warnAboutSpreadingKeyToJSX"]
       79 GETIMPORT                        R18 K4 [require]
       81 GETTABLEKS                       R19 R0 K10 ["Shared"]
       83 CALL                             R18 1 1
       84 GETTABLEKS                       R18 R18 K24 ["checkPropTypes"]
       86 GETIMPORT                        R19 K4 [require]
       88 GETTABLEKS                       R20 R0 K10 ["Shared"]
       90 CALL                             R19 1 1
       91 GETTABLEKS                       R19 R19 K25 ["ReactSharedInternals"]
       93 GETTABLEKS                       R19 R19 K26 ["ReactCurrentOwner"]
       95 GETIMPORT                        R20 K4 [require]
       97 GETIMPORT                        R21 K1 [script]
       99 GETTABLEKS                       R21 R21 K2 ["Parent"]
      101 GETTABLEKS                       R21 R21 K27 ["ReactElement"]
      103 CALL                             R20 1 1
      104 GETTABLEKS                       R21 R20 K28 ["isValidElement"]
      106 GETTABLEKS                       R22 R20 K29 ["createElement"]
      108 GETTABLEKS                       R23 R20 K30 ["cloneElement"]
      110 GETTABLEKS                       R24 R20 K31 ["jsxDEV"]
      112 GETIMPORT                        R25 K4 [require]
      114 GETTABLEKS                       R26 R0 K10 ["Shared"]
      116 CALL                             R25 1 1
      117 GETTABLEKS                       R25 R25 K25 ["ReactSharedInternals"]
      119 GETTABLEKS                       R25 R25 K32 ["ReactDebugCurrentFrame"]
      121 GETTABLEKS                       R25 R25 K33 ["setExtraStackFrame"]
      123 GETIMPORT                        R26 K4 [require]
      125 GETTABLEKS                       R27 R0 K10 ["Shared"]
      127 CALL                             R26 1 1
      128 GETTABLEKS                       R26 R26 K34 ["ReactComponentStackFrame"]
      130 GETTABLEKS                       R26 R26 K35 ["describeUnknownElementTypeFrameInDEV"]
      132 NEWTABLE                         R27 8 0
      134 DUPCLOSURE                       R28 K36 [PROTO_0]
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R26
      137 CAPTURE                          VAL R25
      138 LOADNIL                          R29
      139 GETTABLEKS                       R30 R1 K37 ["__DEV__"]
      141 JUMPIFNOT                        R30 ; [+1]
      142 LOADB                            R29 0
      143 DUPCLOSURE                       R30 K38 [PROTO_1]
      144 DUPCLOSURE                       R31 K39 [PROTO_2]
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R10
      147 DUPCLOSURE                       R32 K40 [PROTO_3]
      148 DUPCLOSURE                       R33 K41 [PROTO_4]
      149 NEWTABLE                         R34 0 0
      151 DUPCLOSURE                       R35 K42 [PROTO_5]
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R4
      155 DUPCLOSURE                       R36 K43 [PROTO_6]
      156 CAPTURE                          VAL R35
      157 CAPTURE                          VAL R34
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R26
      162 CAPTURE                          VAL R25
      163 CAPTURE                          VAL R6
      164 DUPCLOSURE                       R37 K44 [PROTO_7]
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R36
      168 CAPTURE                          VAL R12
      169 NEWCLOSURE                       R38 P8
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R18
      173 CAPTURE                          REF R29
      174 CAPTURE                          VAL R6
      175 DUPCLOSURE                       R39 K45 [PROTO_9]
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R26
      179 CAPTURE                          VAL R25
      180 CAPTURE                          VAL R6
      181 DUPCLOSURE                       R40 K46 [PROTO_10]
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R24
      192 CAPTURE                          VAL R37
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R39
      196 CAPTURE                          VAL R38
      197 SETTABLEKS                       R40 R27 K47 ["jsxWithValidation"]
      199 DUPCLOSURE                       R41 K48 [PROTO_11]
      200 CAPTURE                          VAL R40
      201 SETTABLEKS                       R41 R27 K49 ["jsxWithValidationStatic"]
      203 DUPCLOSURE                       R41 K50 [PROTO_12]
      204 CAPTURE                          VAL R40
      205 SETTABLEKS                       R41 R27 K51 ["jsxWithValidationDynamic"]
      207 DUPCLOSURE                       R41 K52 [PROTO_13]
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R37
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R39
      221 CAPTURE                          VAL R38
      222 SETTABLEKS                       R41 R27 K53 ["createElementWithValidation"]
      224 DUPCLOSURE                       R42 K54 [PROTO_14]
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R37
      227 CAPTURE                          VAL R38
      228 SETTABLEKS                       R42 R27 K55 ["cloneElementWithValidation"]
      230 CLOSEUPVALS                      R29
      231 RETURN                           R27 1
