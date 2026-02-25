PROTO_0:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 GETTABLEKS                       R1 R2 K1 ["type"]
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
        2 GETTABLEKS                       R1 R0 K0 ["fileName"]
        4 LOADK                            R3 K1 ["^.*[\\/]"]
        5 LOADK                            R4 K2 [""]
        6 NAMECALL                         R1 R1 K3 ["gsub"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R2 R0 K4 ["lineNumber"]
       11 LOADK                            R4 K5 ["\n\nCheck your code at "]
       12 MOVE                             R5 R1
       13 LOADK                            R6 K6 [":"]
       14 MOVE                             R7 R2
       15 LOADK                            R8 K7 ["."]
       16 CONCAT                           R3 R4 R8
       17 RETURN                           R3 1
       18 LOADK                            R1 K2 [""]
       19 RETURN                           R1 1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+23]
        2 GETTABLEKS                       R2 R0 K0 ["__source"]
        4 JUMPIFEQKNIL                     R2 ; [+17]
        6 GETTABLEKS                       R3 R2 K1 ["fileName"]
        8 LOADK                            R5 K2 ["^.*[\\/]"]
        9 LOADK                            R6 K3 [""]
       10 NAMECALL                         R3 R3 K4 ["gsub"]
       12 CALL                             R3 3 1
       13 GETTABLEKS                       R4 R2 K5 ["lineNumber"]
       15 LOADK                            R5 K6 ["\n\nCheck your code at "]
       16 MOVE                             R6 R3
       17 LOADK                            R7 K7 [":"]
       18 MOVE                             R8 R4
       19 LOADK                            R9 K8 ["."]
       20 CONCAT                           R1 R5 R9
       21 RETURN                           R1 1
       22 LOADK                            R1 K3 [""]
       23 RETURN                           R1 1
       24 LOADK                            R1 K3 [""]
       25 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+13]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["current"]
        8 GETTABLEKS                       R3 R4 K1 ["type"]
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+5]
       12 LOADK                            R3 K2 ["\n\nCheck the render method of `"]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K3 ["`."]
       15 CONCAT                           R1 R3 R5
       16 JUMP                             ; [+1]
       17 LOADK                            R1 K4 [""]
       18 JUMPIFNOT                        R1 ; [+2]
       19 JUMPIFNOTEQKS                    R1 K4 [""] ; [+44]
       21 LOADNIL                          R2
       22 FASTCALL1                        TYPEOF R0 ; [+3]
       23 MOVE                             R4 R0
       24 GETIMPORT                        R3 K6 [typeof]
       26 CALL                             R3 1 1
       27 JUMPIFNOTEQKS                    R3 K7 ["string"] ; [+3]
       29 MOVE                             R2 R0
       30 JUMP                             ; [+26]
       31 JUMPIFNOTEQKS                    R3 K8 ["function"] ; [+12]
       33 GETIMPORT                        R4 K11 [debug.info]
       35 MOVE                             R5 R0
       36 LOADK                            R6 K12 ["n"]
       37 CALL                             R4 2 1
       38 LOADB                            R5 0
       39 JUMPIFEQKS                       R4 K4 [""] ; [+2]
       41 MOVE                             R5 R4
       42 MOVE                             R2 R5
       43 JUMP                             ; [+13]
       44 FASTCALL1                        TYPEOF R0 ; [+3]
       45 MOVE                             R5 R0
       46 GETIMPORT                        R4 K6 [typeof]
       48 CALL                             R4 1 1
       49 JUMPIFNOTEQKS                    R4 K13 ["table"] ; [+7]
       51 GETTABLEKS                       R4 R0 K14 ["displayName"]
       53 JUMPIF                           R4 ; [+2]
       54 GETTABLEKS                       R4 R0 K15 ["name"]
       56 MOVE                             R2 R4
       57 JUMPIFNOT                        R2 ; [+6]
       58 LOADK                            R4 K16 ["\n\nCheck the top-level render call using <%s>."]
       59 MOVE                             R6 R2
       60 NAMECALL                         R4 R4 K17 ["format"]
       62 CALL                             R4 2 1
       63 MOVE                             R1 R4
       64 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 JUMPIFEQKNIL                     R3 ; [+6]
        4 GETTABLEKS                       R4 R0 K0 ["_store"]
        6 GETTABLEKS                       R3 R4 K1 ["validated"]
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
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R6 R7 K5 ["current"]
       48 JUMPIFEQ                         R5 R6 ; [+16]
       50 LOADK                            R5 K6 [" It was passed a child from %s."]
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R10 R0 K4 ["_owner"]
       54 GETTABLEKS                       R9 R10 K7 ["type"]
       56 CALL                             R8 1 -1
       57 FASTCALL                         TOSTRING ; [+2]
       58 GETIMPORT                        R7 K9 [tostring]
       60 CALL                             R7 -1 1
       61 NAMECALL                         R5 R5 K10 ["format"]
       63 CALL                             R5 2 1
       64 MOVE                             R4 R5
       65 GETIMPORT                        R6 K12 [_G]
       67 GETTABLEKS                       R5 R6 K13 ["__DEV__"]
       69 JUMPIFNOT                        R5 ; [+55]
       70 GETIMPORT                        R6 K12 [_G]
       72 GETTABLEKS                       R5 R6 K13 ["__DEV__"]
       74 JUMPIFNOT                        R5 ; [+21]
       75 JUMPIFNOT                        R0 ; [+17]
       76 GETTABLEKS                       R5 R0 K4 ["_owner"]
       78 LOADNIL                          R6
       79 JUMPIFNOT                        R5 ; [+2]
       80 GETTABLEKS                       R6 R5 K7 ["type"]
       82 GETUPVAL                         R7 4
       83 GETTABLEKS                       R8 R0 K7 ["type"]
       85 GETTABLEKS                       R9 R0 K14 ["_source"]
       87 MOVE                             R10 R6
       88 CALL                             R7 3 1
       89 GETUPVAL                         R8 5
       90 MOVE                             R9 R7
       91 CALL                             R8 1 0
       92 JUMP                             ; [+3]
       93 GETUPVAL                         R5 5
       94 LOADNIL                          R6
       95 CALL                             R5 1 0
       96 GETTABLEKS                       R5 R0 K0 ["_store"]
       98 JUMPIFEQKNIL                     R5 ; [+11]
      100 JUMPIFEQKNIL                     R2 ; [+9]
      102 GETUPVAL                         R6 6
      103 GETTABLEKS                       R5 R6 K15 ["error"]
      105 LOADK                            R6 K16 ["Child element received a \"key\" prop in addition to a key in the \"children\" table of its parent. Please provide only one key definition. When both are present, the \"key\" prop will take precedence.%s%s See https://reactjs.org/link/warning-keys for more information."]
      106 MOVE                             R7 R3
      107 MOVE                             R8 R4
      108 CALL                             R5 3 0
      109 JUMP                             ; [+7]
      110 GETUPVAL                         R6 6
      111 GETTABLEKS                       R5 R6 K15 ["error"]
      113 LOADK                            R6 K17 ["Each child in a list should have a unique \"key\" prop.%s%s See https://reactjs.org/link/warning-keys for more information."]
      114 MOVE                             R7 R3
      115 MOVE                             R8 R4
      116 CALL                             R5 3 0
      117 GETIMPORT                        R6 K12 [_G]
      119 GETTABLEKS                       R5 R6 K13 ["__DEV__"]
      121 JUMPIFNOT                        R5 ; [+3]
      122 GETUPVAL                         R5 5
      123 LOADNIL                          R6
      124 CALL                             R5 1 0
      125 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["isArray"]
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
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIF                           R1 ; [+5]
        5 GETIMPORT                        R2 K1 [_G]
        7 GETTABLEKS                       R1 R2 K3 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        9 JUMPIFNOT                        R1 ; [+85]
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
       71 GETUPVAL                         R6 3
       72 GETTABLEKS                       R5 R6 K15 ["error"]
       74 LOADK                            R6 K16 ["Component %s declared `PropTypes` instead of `propTypes`. Did you misspell the property assignment?"]
       75 ORK                              R7 R4 K17 ["Unknown"]
       76 CALL                             R5 2 0
       77 GETTABLEKS                       R5 R1 K18 ["getDefaultProps"]
       79 FASTCALL1                        TYPEOF R5 ; [+2]
       80 GETIMPORT                        R4 K6 [typeof]
       82 CALL                             R4 1 1
       83 JUMPIFNOTEQKS                    R4 K8 ["function"] ; [+11]
       85 GETTABLEKS                       R5 R1 K18 ["getDefaultProps"]
       87 GETTABLEKS                       R4 R5 K19 ["isReactClassApproved"]
       89 JUMPIF                           R4 ; [+5]
       90 GETUPVAL                         R5 3
       91 GETTABLEKS                       R4 R5 K15 ["error"]
       93 LOADK                            R5 K20 ["getDefaultProps is only used on classic React.createClass definitions. Use a static property named `defaultProps` instead."]
       94 CALL                             R4 1 0
       95 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+100]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K3 ["keys"]
        8 GETTABLEKS                       R2 R0 K4 ["props"]
       10 CALL                             R1 1 1
       11 LOADN                            R4 1
       12 LENGTH                           R2 R1
       13 LOADN                            R3 1
       14 FORNPREP                         R2
       15 GETTABLE                         R5 R1 R4
       16 JUMPIFEQKS                       R5 K5 ["children"] ; [+44]
       18 JUMPIFEQKS                       R5 K6 ["key"] ; [+42]
       20 GETIMPORT                        R7 K1 [_G]
       22 GETTABLEKS                       R6 R7 K2 ["__DEV__"]
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
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R6 R7 K10 ["error"]
       49 LOADK                            R7 K11 ["Invalid prop `%s` supplied to `React.Fragment`. React.Fragment can only have `key` and `children` props."]
       50 MOVE                             R8 R5
       51 CALL                             R6 2 0
       52 GETIMPORT                        R7 K1 [_G]
       54 GETTABLEKS                       R6 R7 K2 ["__DEV__"]
       56 JUMPIFNOT                        R6 ; [+5]
       57 GETUPVAL                         R6 2
       58 LOADNIL                          R7
       59 CALL                             R6 1 0
       60 JUMP                             ; [+1]
       61 FORNLOOP                         R2
       62 GETTABLEKS                       R2 R0 K12 ["ref"]
       64 JUMPIFEQKNIL                     R2 ; [+40]
       66 GETIMPORT                        R3 K1 [_G]
       68 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
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
       92 GETUPVAL                         R3 3
       93 GETTABLEKS                       R2 R3 K10 ["error"]
       95 LOADK                            R3 K13 ["Invalid attribute `ref` supplied to `React.Fragment`."]
       96 CALL                             R2 1 0
       97 GETIMPORT                        R3 K1 [_G]
       99 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
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
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K4 ["keys"]
       17 MOVE                             R10 R0
       18 CALL                             R9 1 1
       19 LENGTH                           R8 R9
       20 JUMPIFNOTEQKN                    R8 K5 [0] ; [+4]
       22 MOVE                             R8 R7
       23 LOADK                            R9 K6 [" You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports."]
       24 CONCAT                           R7 R8 R9
       25 JUMPIFEQKNIL                     R4 ; [+17]
       27 GETTABLEKS                       R9 R4 K7 ["fileName"]
       29 LOADK                            R11 K8 ["^.*[\\/]"]
       30 LOADK                            R12 K0 [""]
       31 NAMECALL                         R9 R9 K9 ["gsub"]
       33 CALL                             R9 3 1
       34 GETTABLEKS                       R10 R4 K10 ["lineNumber"]
       36 LOADK                            R11 K11 ["\n\nCheck your code at "]
       37 MOVE                             R12 R9
       38 LOADK                            R13 K12 [":"]
       39 MOVE                             R14 R10
       40 LOADK                            R15 K13 ["."]
       41 CONCAT                           R8 R11 R15
       42 JUMP                             ; [+1]
       43 LOADK                            R8 K0 [""]
       44 JUMPIFNOT                        R8 ; [+4]
       45 MOVE                             R9 R7
       46 MOVE                             R10 R8
       47 CONCAT                           R7 R9 R10
       48 JUMP                             ; [+20]
       49 MOVE                             R9 R7
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R11 R12 K14 ["current"]
       53 JUMPIFNOT                        R11 ; [+13]
       54 GETUPVAL                         R11 3
       55 GETUPVAL                         R14 2
       56 GETTABLEKS                       R13 R14 K14 ["current"]
       58 GETTABLEKS                       R12 R13 K15 ["type"]
       60 CALL                             R11 1 1
       61 JUMPIFNOT                        R11 ; [+5]
       62 LOADK                            R12 K16 ["\n\nCheck the render method of `"]
       63 MOVE                             R13 R11
       64 LOADK                            R14 K17 ["`."]
       65 CONCAT                           R10 R12 R14
       66 JUMP                             ; [+1]
       67 LOADK                            R10 K0 [""]
       68 CONCAT                           R7 R9 R10
       69 LOADNIL                          R9
       70 JUMPIFNOTEQKNIL                  R0 ; [+3]
       72 LOADK                            R9 K18 ["nil"]
       73 JUMP                             ; [+46]
       74 GETUPVAL                         R11 4
       75 GETTABLEKS                       R10 R11 K19 ["isArray"]
       77 MOVE                             R11 R0
       78 CALL                             R10 1 1
       79 JUMPIFNOT                        R10 ; [+2]
       80 LOADK                            R9 K20 ["array"]
       81 JUMP                             ; [+38]
       82 FASTCALL1                        TYPEOF R0 ; [+3]
       83 MOVE                             R11 R0
       84 GETIMPORT                        R10 K2 [typeof]
       86 CALL                             R10 1 1
       87 JUMPIFNOTEQKS                    R10 K3 ["table"] ; [+20]
       89 GETTABLEKS                       R10 R0 K21 ["$$typeof"]
       91 GETUPVAL                         R11 5
       92 JUMPIFNOTEQ                      R10 R11 ; [+15]
       94 LOADK                            R10 K22 ["<%s />"]
       95 GETUPVAL                         R13 3
       96 GETTABLEKS                       R14 R0 K15 ["type"]
       98 CALL                             R13 1 1
       99 ORK                              R12 R13 K23 ["Unknown"]
      100 NAMECALL                         R10 R10 K24 ["format"]
      102 CALL                             R10 2 1
      103 MOVE                             R9 R10
      104 MOVE                             R10 R7
      105 LOADK                            R11 K25 [" Did you accidentally export a JSX literal or Element instead of a component?"]
      106 CONCAT                           R7 R10 R11
      107 JUMP                             ; [+12]
      108 FASTCALL1                        TYPEOF R0 ; [+3]
      109 MOVE                             R11 R0
      110 GETIMPORT                        R10 K2 [typeof]
      112 CALL                             R10 1 1
      113 MOVE                             R9 R10
      114 MOVE                             R10 R7
      115 LOADK                            R11 K26 ["\n"]
      116 GETUPVAL                         R12 6
      117 MOVE                             R13 R0
      118 CALL                             R12 1 1
      119 CONCAT                           R7 R10 R12
      120 GETIMPORT                        R11 K28 [_G]
      122 GETTABLEKS                       R10 R11 K29 ["__DEV__"]
      124 JUMPIFNOT                        R10 ; [+7]
      125 GETUPVAL                         R11 7
      126 GETTABLEKS                       R10 R11 K30 ["error"]
      128 LOADK                            R11 K31 ["React.jsx: type is invalid -- expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s"]
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
      143 GETTABLEKS                       R8 R1 K32 ["children"]
      145 JUMPIFEQKNIL                     R8 ; [+38]
      147 JUMPIFNOT                        R3 ; [+32]
      148 GETUPVAL                         R10 4
      149 GETTABLEKS                       R9 R10 K19 ["isArray"]
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
      163 GETUPVAL                         R10 1
      164 GETTABLEKS                       R9 R10 K33 ["freeze"]
      166 MOVE                             R10 R8
      167 CALL                             R9 1 0
      168 JUMP                             ; [+15]
      169 GETIMPORT                        R10 K28 [_G]
      171 GETTABLEKS                       R9 R10 K29 ["__DEV__"]
      173 JUMPIFNOT                        R9 ; [+10]
      174 GETUPVAL                         R10 7
      175 GETTABLEKS                       R9 R10 K30 ["error"]
      177 LOADK                            R10 K34 ["React.jsx: Static children should always be an array. You are likely explicitly calling React.jsxs or React.jsxDEV. Use the Babel transform instead."]
      178 CALL                             R9 1 0
      179 JUMP                             ; [+4]
      180 GETUPVAL                         R9 9
      181 MOVE                             R10 R8
      182 MOVE                             R11 R0
      183 CALL                             R9 2 0
      184 GETIMPORT                        R9 K28 [_G]
      186 GETTABLEKS                       R8 R9 K29 ["__DEV__"]
      188 JUMPIFNOT                        R8 ; [+18]
      189 GETUPVAL                         R8 10
      190 JUMPIFNOT                        R8 ; [+16]
      191 GETTABLEKS                       R9 R1 K35 ["key"]
      193 JUMPIFNOTEQKNIL                  R9 ; [+2]
      195 LOADB                            R8 0 +1
      196 LOADB                            R8 1
      197 JUMPIFNOT                        R8 ; [+9]
      198 GETUPVAL                         R9 7
      199 GETTABLEKS                       R8 R9 K30 ["error"]
      201 LOADK                            R9 K36 ["React.jsx: Spreading a key to JSX is a deprecated pattern. Explicitly pass a key after spreading props in your JSX call. E.g. <%s {...props} key={key} />"]
      202 GETUPVAL                         R11 3
      203 MOVE                             R12 R0
      204 CALL                             R11 1 1
      205 ORK                              R10 R11 K37 ["ComponentName"]
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
        0 PREPVARARGS                      0
        1 GETVARARGS                       R0 2
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+138]
        6 LOADK                            R3 K0 [""]
        7 JUMPIFEQKNIL                     R0 ; [+16]
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R5 R0
       11 GETIMPORT                        R4 K2 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+12]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K4 ["keys"]
       19 MOVE                             R6 R0
       20 CALL                             R5 1 1
       21 LENGTH                           R4 R5
       22 JUMPIFNOTEQKN                    R4 K5 [0] ; [+4]
       24 MOVE                             R4 R3
       25 LOADK                            R5 K6 [" You likely forgot to export your component from the file it's defined in, or you might have mixed up default and named imports."]
       26 CONCAT                           R3 R4 R5
       27 JUMPIFEQKNIL                     R1 ; [+23]
       29 GETTABLEKS                       R5 R1 K7 ["__source"]
       31 JUMPIFEQKNIL                     R5 ; [+17]
       33 GETTABLEKS                       R6 R5 K8 ["fileName"]
       35 LOADK                            R8 K9 ["^.*[\\/]"]
       36 LOADK                            R9 K0 [""]
       37 NAMECALL                         R6 R6 K10 ["gsub"]
       39 CALL                             R6 3 1
       40 GETTABLEKS                       R7 R5 K11 ["lineNumber"]
       42 LOADK                            R8 K12 ["\n\nCheck your code at "]
       43 MOVE                             R9 R6
       44 LOADK                            R10 K13 [":"]
       45 MOVE                             R11 R7
       46 LOADK                            R12 K14 ["."]
       47 CONCAT                           R4 R8 R12
       48 JUMP                             ; [+3]
       49 LOADK                            R4 K0 [""]
       50 JUMP                             ; [+1]
       51 LOADK                            R4 K0 [""]
       52 JUMPIFNOT                        R4 ; [+4]
       53 MOVE                             R5 R3
       54 MOVE                             R6 R4
       55 CONCAT                           R3 R5 R6
       56 JUMP                             ; [+20]
       57 MOVE                             R5 R3
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R7 R8 K15 ["current"]
       61 JUMPIFNOT                        R7 ; [+13]
       62 GETUPVAL                         R7 3
       63 GETUPVAL                         R10 2
       64 GETTABLEKS                       R9 R10 K15 ["current"]
       66 GETTABLEKS                       R8 R9 K16 ["type"]
       68 CALL                             R7 1 1
       69 JUMPIFNOT                        R7 ; [+5]
       70 LOADK                            R8 K17 ["\n\nCheck the render method of `"]
       71 MOVE                             R9 R7
       72 LOADK                            R10 K18 ["`."]
       73 CONCAT                           R6 R8 R10
       74 JUMP                             ; [+1]
       75 LOADK                            R6 K0 [""]
       76 CONCAT                           R3 R5 R6
       77 LOADNIL                          R5
       78 JUMPIFNOTEQKNIL                  R0 ; [+3]
       80 LOADK                            R5 K19 ["nil"]
       81 JUMP                             ; [+50]
       82 GETUPVAL                         R7 4
       83 GETTABLEKS                       R6 R7 K20 ["isArray"]
       85 MOVE                             R7 R0
       86 CALL                             R6 1 1
       87 JUMPIFNOT                        R6 ; [+2]
       88 LOADK                            R5 K21 ["array"]
       89 JUMP                             ; [+42]
       90 JUMPIFEQKNIL                     R0 ; [+27]
       92 FASTCALL1                        TYPEOF R0 ; [+3]
       93 MOVE                             R7 R0
       94 GETIMPORT                        R6 K2 [typeof]
       96 CALL                             R6 1 1
       97 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+20]
       99 GETTABLEKS                       R6 R0 K22 ["$$typeof"]
      101 GETUPVAL                         R7 5
      102 JUMPIFNOTEQ                      R6 R7 ; [+15]
      104 LOADK                            R6 K23 ["<%s />"]
      105 GETUPVAL                         R9 3
      106 GETTABLEKS                       R10 R0 K16 ["type"]
      108 CALL                             R9 1 1
      109 ORK                              R8 R9 K24 ["Unknown"]
      110 NAMECALL                         R6 R6 K25 ["format"]
      112 CALL                             R6 2 1
      113 MOVE                             R5 R6
      114 MOVE                             R6 R3
      115 LOADK                            R7 K26 [" Did you accidentally export a JSX literal or Element instead of a component?"]
      116 CONCAT                           R3 R6 R7
      117 JUMP                             ; [+14]
      118 FASTCALL1                        TYPEOF R0 ; [+3]
      119 MOVE                             R7 R0
      120 GETIMPORT                        R6 K2 [typeof]
      122 CALL                             R6 1 1
      123 MOVE                             R5 R6
      124 JUMPIFEQKNIL                     R0 ; [+7]
      126 MOVE                             R6 R3
      127 LOADK                            R7 K27 ["\n"]
      128 GETUPVAL                         R8 6
      129 MOVE                             R9 R0
      130 CALL                             R8 1 1
      131 CONCAT                           R3 R6 R8
      132 GETIMPORT                        R7 K29 [_G]
      134 GETTABLEKS                       R6 R7 K30 ["__DEV__"]
      136 JUMPIFNOT                        R6 ; [+7]
      137 GETUPVAL                         R7 7
      138 GETTABLEKS                       R6 R7 K31 ["error"]
      140 LOADK                            R7 K32 ["React.createElement: type is invalid -- expected a string (for built-in components) or a class/function (for composite components) but got: %s.%s"]
      141 MOVE                             R8 R5
      142 MOVE                             R9 R3
      143 CALL                             R6 3 0
      144 GETUPVAL                         R3 8
      145 GETVARARGS                       R4 -1
      146 CALL                             R3 -1 1
      147 JUMPIFNOTEQKNIL                  R3 ; [+2]
      149 RETURN                           R3 1
      150 JUMPIFNOT                        R2 ; [+20]
      151 LOADN                            R6 3
      152 LOADK                            R8 K33 ["#"]
      153 FASTCALL1                        SELECT_VARARG R8 ; [+3]
      154 GETIMPORT                        R7 K35 [select]
      156 GETVARARGS                       R9 -1
      157 CALL                             R7 -1 1
      158 MOVE                             R4 R7
      159 LOADN                            R5 1
      160 FORNPREP                         R4
      161 GETUPVAL                         R7 9
      162 FASTCALL1                        SELECT_VARARG R6 ; [+4]
      163 GETIMPORT                        R8 K35 [select]
      165 MOVE                             R9 R6
      166 GETVARARGS                       R10 -1
      167 CALL                             R8 -1 1
      168 MOVE                             R9 R0
      169 CALL                             R7 2 0
      170 FORNLOOP                         R4
      171 GETUPVAL                         R4 10
      172 JUMPIFNOTEQ                      R0 R4 ; [+5]
      174 GETUPVAL                         R4 11
      175 MOVE                             R5 R3
      176 CALL                             R4 1 0
      177 RETURN                           R3 1
      178 GETUPVAL                         R4 12
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
        9 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       10 MOVE                             R5 R2
       11 GETIMPORT                        R4 K1 [unpack]
       13 CALL                             R4 1 -1
       14 CALL                             R3 -1 1
       15 LOADN                            R6 3
       16 LENGTH                           R4 R2
       17 LOADN                            R5 1
       18 FORNPREP                         R4
       19 GETUPVAL                         R7 1
       20 GETTABLE                         R8 R2 R6
       21 GETTABLEKS                       R9 R3 K2 ["type"]
       23 CALL                             R7 2 0
       24 FORNLOOP                         R4
       25 GETUPVAL                         R4 2
       26 MOVE                             R5 R3
       27 CALL                             R4 1 0
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K8 ["Shared"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R4 R5 K9 ["console"]
       23 GETTABLEKS                       R6 R1 K10 ["util"]
       25 GETTABLEKS                       R5 R6 K11 ["inspect"]
       27 GETIMPORT                        R7 K4 [require]
       29 GETTABLEKS                       R8 R0 K8 ["Shared"]
       31 CALL                             R7 1 1
       32 GETTABLEKS                       R6 R7 K12 ["isValidElementType"]
       34 GETIMPORT                        R8 K4 [require]
       36 GETTABLEKS                       R9 R0 K8 ["Shared"]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R7 R8 K13 ["getComponentName"]
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R0 K8 ["Shared"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R8 R9 K14 ["ReactSymbols"]
       48 GETTABLEKS                       R9 R8 K15 ["getIteratorFn"]
       50 GETTABLEKS                       R10 R8 K16 ["REACT_FORWARD_REF_TYPE"]
       52 GETTABLEKS                       R11 R8 K17 ["REACT_MEMO_TYPE"]
       54 GETTABLEKS                       R12 R8 K18 ["REACT_FRAGMENT_TYPE"]
       56 GETTABLEKS                       R13 R8 K19 ["REACT_ELEMENT_TYPE"]
       58 GETIMPORT                        R16 K4 [require]
       60 GETTABLEKS                       R17 R0 K8 ["Shared"]
       62 CALL                             R16 1 1
       63 GETTABLEKS                       R15 R16 K20 ["ReactFeatureFlags"]
       65 GETTABLEKS                       R14 R15 K21 ["warnAboutSpreadingKeyToJSX"]
       67 GETIMPORT                        R16 K4 [require]
       69 GETTABLEKS                       R17 R0 K8 ["Shared"]
       71 CALL                             R16 1 1
       72 GETTABLEKS                       R15 R16 K22 ["checkPropTypes"]
       74 GETIMPORT                        R18 K4 [require]
       76 GETTABLEKS                       R19 R0 K8 ["Shared"]
       78 CALL                             R18 1 1
       79 GETTABLEKS                       R17 R18 K23 ["ReactSharedInternals"]
       81 GETTABLEKS                       R16 R17 K24 ["ReactCurrentOwner"]
       83 GETIMPORT                        R17 K4 [require]
       85 GETIMPORT                        R20 K1 [script]
       87 GETTABLEKS                       R19 R20 K2 ["Parent"]
       89 GETTABLEKS                       R18 R19 K25 ["ReactElement"]
       91 CALL                             R17 1 1
       92 GETTABLEKS                       R18 R17 K26 ["isValidElement"]
       94 GETTABLEKS                       R19 R17 K27 ["createElement"]
       96 GETTABLEKS                       R20 R17 K28 ["cloneElement"]
       98 GETTABLEKS                       R21 R17 K29 ["jsxDEV"]
      100 GETIMPORT                        R25 K4 [require]
      102 GETTABLEKS                       R26 R0 K8 ["Shared"]
      104 CALL                             R25 1 1
      105 GETTABLEKS                       R24 R25 K23 ["ReactSharedInternals"]
      107 GETTABLEKS                       R23 R24 K30 ["ReactDebugCurrentFrame"]
      109 GETTABLEKS                       R22 R23 K31 ["setExtraStackFrame"]
      111 GETIMPORT                        R25 K4 [require]
      113 GETTABLEKS                       R26 R0 K8 ["Shared"]
      115 CALL                             R25 1 1
      116 GETTABLEKS                       R24 R25 K32 ["ReactComponentStackFrame"]
      118 GETTABLEKS                       R23 R24 K33 ["describeUnknownElementTypeFrameInDEV"]
      120 NEWTABLE                         R24 8 0
      122 DUPCLOSURE                       R25 K34 [PROTO_0]
      123 CAPTURE                          VAL R23
      124 CAPTURE                          VAL R22
      125 LOADNIL                          R26
      126 GETIMPORT                        R28 K36 [_G]
      128 GETTABLEKS                       R27 R28 K37 ["__DEV__"]
      130 JUMPIFNOT                        R27 ; [+1]
      131 LOADB                            R26 0
      132 DUPCLOSURE                       R27 K38 [PROTO_1]
      133 DUPCLOSURE                       R28 K39 [PROTO_2]
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R7
      136 DUPCLOSURE                       R29 K40 [PROTO_3]
      137 DUPCLOSURE                       R30 K41 [PROTO_4]
      138 NEWTABLE                         R31 0 0
      140 DUPCLOSURE                       R32 K42 [PROTO_5]
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R7
      143 DUPCLOSURE                       R33 K43 [PROTO_6]
      144 CAPTURE                          VAL R32
      145 CAPTURE                          VAL R31
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R22
      150 CAPTURE                          VAL R4
      151 DUPCLOSURE                       R34 K44 [PROTO_7]
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R33
      155 CAPTURE                          VAL R9
      156 NEWCLOSURE                       R35 P8
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R15
      159 CAPTURE                          REF R26
      160 CAPTURE                          VAL R4
      161 DUPCLOSURE                       R36 K45 [PROTO_9]
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R4
      166 DUPCLOSURE                       R37 K46 [PROTO_10]
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R34
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R36
      180 CAPTURE                          VAL R35
      181 SETTABLEKS                       R37 R24 K47 ["jsxWithValidation"]
      183 DUPCLOSURE                       R38 K48 [PROTO_11]
      184 CAPTURE                          VAL R37
      185 SETTABLEKS                       R38 R24 K49 ["jsxWithValidationStatic"]
      187 DUPCLOSURE                       R38 K50 [PROTO_12]
      188 CAPTURE                          VAL R37
      189 SETTABLEKS                       R38 R24 K51 ["jsxWithValidationDynamic"]
      191 DUPCLOSURE                       R38 K52 [PROTO_13]
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R34
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R36
      204 CAPTURE                          VAL R35
      205 SETTABLEKS                       R38 R24 K53 ["createElementWithValidation"]
      207 DUPCLOSURE                       R39 K54 [PROTO_14]
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R34
      210 CAPTURE                          VAL R35
      211 SETTABLEKS                       R39 R24 K55 ["cloneElementWithValidation"]
      213 CLOSEUPVALS                      R26
      214 RETURN                           R24 1
