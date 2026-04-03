PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 JUMPIFEQKNIL                     R2 ; [+15]
        4 GETTABLEKS                       R4 R2 K0 ["mode"]
        6 GETUPVAL                         R5 0
        7 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
        9 GETIMPORT                        R3 K3 [bit32.band]
       11 CALL                             R3 2 1
       12 JUMPIFEQKN                       R3 K4 [0] ; [+2]
       14 MOVE                             R1 R2
       15 GETTABLEKS                       R2 R2 K5 ["return_"]
       17 JUMPBACK                         ; [-16]
       18 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 GETIMPORT                        R2 K4 [table.sort]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 GETIMPORT                        R2 K6 [table.concat]
       21 MOVE                             R3 R1
       22 LOADK                            R4 K7 [", "]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["type"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R1 K1 ["componentWillMount"]
        8 FASTCALL1                        TYPEOF R3 ; [+2]
        9 GETIMPORT                        R2 K3 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+8]
       14 GETUPVAL                         R3 1
       15 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R2 K7 [table.insert]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R3 R0 K8 ["mode"]
       23 GETUPVAL                         R4 2
       24 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       26 GETIMPORT                        R2 K11 [bit32.band]
       28 CALL                             R2 2 1
       29 JUMPIFEQKN                       R2 K12 [0] ; [+16]
       31 GETTABLEKS                       R3 R1 K13 ["UNSAFE_componentWillMount"]
       33 FASTCALL1                        TYPEOF R3 ; [+2]
       34 GETIMPORT                        R2 K3 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+8]
       39 GETUPVAL                         R3 3
       40 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       42 MOVE                             R4 R0
       43 GETIMPORT                        R2 K7 [table.insert]
       45 CALL                             R2 2 0
       46 GETTABLEKS                       R3 R1 K14 ["componentWillReceiveProps"]
       48 FASTCALL1                        TYPEOF R3 ; [+2]
       49 GETIMPORT                        R2 K3 [typeof]
       51 CALL                             R2 1 1
       52 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+8]
       54 GETUPVAL                         R3 4
       55 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       57 MOVE                             R4 R0
       58 GETIMPORT                        R2 K7 [table.insert]
       60 CALL                             R2 2 0
       61 GETTABLEKS                       R3 R0 K8 ["mode"]
       63 GETUPVAL                         R4 2
       64 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       66 GETIMPORT                        R2 K11 [bit32.band]
       68 CALL                             R2 2 1
       69 JUMPIFEQKN                       R2 K12 [0] ; [+16]
       71 GETTABLEKS                       R3 R1 K15 ["UNSAFE_componentWillReceiveProps"]
       73 FASTCALL1                        TYPEOF R3 ; [+2]
       74 GETIMPORT                        R2 K3 [typeof]
       76 CALL                             R2 1 1
       77 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+8]
       79 GETUPVAL                         R3 5
       80 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       82 MOVE                             R4 R0
       83 GETIMPORT                        R2 K7 [table.insert]
       85 CALL                             R2 2 0
       86 GETTABLEKS                       R3 R1 K16 ["componentWillUpdate"]
       88 FASTCALL1                        TYPEOF R3 ; [+2]
       89 GETIMPORT                        R2 K3 [typeof]
       91 CALL                             R2 1 1
       92 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+8]
       94 GETUPVAL                         R3 6
       95 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       97 MOVE                             R4 R0
       98 GETIMPORT                        R2 K7 [table.insert]
      100 CALL                             R2 2 0
      101 GETTABLEKS                       R3 R0 K8 ["mode"]
      103 GETUPVAL                         R4 2
      104 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
      106 GETIMPORT                        R2 K11 [bit32.band]
      108 CALL                             R2 2 1
      109 JUMPIFEQKN                       R2 K12 [0] ; [+16]
      111 GETTABLEKS                       R3 R1 K17 ["UNSAFE_componentWillUpdate"]
      113 FASTCALL1                        TYPEOF R3 ; [+2]
      114 GETIMPORT                        R2 K3 [typeof]
      116 CALL                             R2 1 1
      117 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+8]
      119 GETUPVAL                         R3 7
      120 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
      122 MOVE                             R4 R0
      123 GETIMPORT                        R2 K7 [table.insert]
      125 CALL                             R2 2 0
      126 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 LENGTH                           R1 R2
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+23]
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R8 R5 K1 ["type"]
       14 CALL                             R7 1 1
       15 ORK                              R6 R7 K0 ["Component"]
       16 LOADB                            R7 1
       17 SETTABLE                         R7 R0 R6
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R7 R5 K1 ["type"]
       21 LOADB                            R8 1
       22 SETTABLE                         R8 R6 R7
       23 FORGLOOP                         R1 2 ; [-13]
       25 GETIMPORT                        R1 K4 [table.clear]
       27 GETUPVAL                         R2 0
       28 CALL                             R1 1 0
       29 NEWTABLE                         R1 0 0
       31 GETUPVAL                         R3 3
       32 LENGTH                           R2 R3
       33 LOADN                            R3 0
       34 JUMPIFNOTLT                      R3 R2 ; [+23]
       36 GETUPVAL                         R2 3
       37 LOADNIL                          R3
       38 LOADNIL                          R4
       39 FORGPREP                         R2
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R9 R6 K1 ["type"]
       43 CALL                             R8 1 1
       44 ORK                              R7 R8 K0 ["Component"]
       45 LOADB                            R8 1
       46 SETTABLE                         R8 R1 R7
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R8 R6 K1 ["type"]
       50 LOADB                            R9 1
       51 SETTABLE                         R9 R7 R8
       52 FORGLOOP                         R2 2 ; [-13]
       54 GETIMPORT                        R2 K4 [table.clear]
       56 GETUPVAL                         R3 3
       57 CALL                             R2 1 0
       58 NEWTABLE                         R2 0 0
       60 GETUPVAL                         R4 4
       61 LENGTH                           R3 R4
       62 LOADN                            R4 0
       63 JUMPIFNOTLT                      R4 R3 ; [+23]
       65 GETUPVAL                         R3 4
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R10 R7 K1 ["type"]
       72 CALL                             R9 1 1
       73 ORK                              R8 R9 K0 ["Component"]
       74 LOADB                            R9 1
       75 SETTABLE                         R9 R2 R8
       76 GETUPVAL                         R8 2
       77 GETTABLEKS                       R9 R7 K1 ["type"]
       79 LOADB                            R10 1
       80 SETTABLE                         R10 R8 R9
       81 FORGLOOP                         R3 2 ; [-13]
       83 GETIMPORT                        R3 K4 [table.clear]
       85 GETUPVAL                         R4 4
       86 CALL                             R3 1 0
       87 NEWTABLE                         R3 0 0
       89 GETUPVAL                         R5 5
       90 LENGTH                           R4 R5
       91 LOADN                            R5 0
       92 JUMPIFNOTLT                      R5 R4 ; [+23]
       94 GETUPVAL                         R4 5
       95 LOADNIL                          R5
       96 LOADNIL                          R6
       97 FORGPREP                         R4
       98 GETUPVAL                         R10 1
       99 GETTABLEKS                       R11 R8 K1 ["type"]
      101 CALL                             R10 1 1
      102 ORK                              R9 R10 K0 ["Component"]
      103 LOADB                            R10 1
      104 SETTABLE                         R10 R3 R9
      105 GETUPVAL                         R9 2
      106 GETTABLEKS                       R10 R8 K1 ["type"]
      108 LOADB                            R11 1
      109 SETTABLE                         R11 R9 R10
      110 FORGLOOP                         R4 2 ; [-13]
      112 GETIMPORT                        R4 K4 [table.clear]
      114 GETUPVAL                         R5 5
      115 CALL                             R4 1 0
      116 NEWTABLE                         R4 0 0
      118 GETUPVAL                         R6 6
      119 LENGTH                           R5 R6
      120 LOADN                            R6 0
      121 JUMPIFNOTLT                      R6 R5 ; [+23]
      123 GETUPVAL                         R5 6
      124 LOADNIL                          R6
      125 LOADNIL                          R7
      126 FORGPREP                         R5
      127 GETUPVAL                         R11 1
      128 GETTABLEKS                       R12 R9 K1 ["type"]
      130 CALL                             R11 1 1
      131 ORK                              R10 R11 K0 ["Component"]
      132 LOADB                            R11 1
      133 SETTABLE                         R11 R4 R10
      134 GETUPVAL                         R10 2
      135 GETTABLEKS                       R11 R9 K1 ["type"]
      137 LOADB                            R12 1
      138 SETTABLE                         R12 R10 R11
      139 FORGLOOP                         R5 2 ; [-13]
      141 GETIMPORT                        R5 K4 [table.clear]
      143 GETUPVAL                         R6 6
      144 CALL                             R5 1 0
      145 NEWTABLE                         R5 0 0
      147 GETUPVAL                         R7 7
      148 LENGTH                           R6 R7
      149 LOADN                            R7 0
      150 JUMPIFNOTLT                      R7 R6 ; [+23]
      152 GETUPVAL                         R6 7
      153 LOADNIL                          R7
      154 LOADNIL                          R8
      155 FORGPREP                         R6
      156 GETUPVAL                         R12 1
      157 GETTABLEKS                       R13 R10 K1 ["type"]
      159 CALL                             R12 1 1
      160 ORK                              R11 R12 K0 ["Component"]
      161 LOADB                            R12 1
      162 SETTABLE                         R12 R5 R11
      163 GETUPVAL                         R11 2
      164 GETTABLEKS                       R12 R10 K1 ["type"]
      166 LOADB                            R13 1
      167 SETTABLE                         R13 R11 R12
      168 FORGLOOP                         R6 2 ; [-13]
      170 GETIMPORT                        R6 K4 [table.clear]
      172 GETUPVAL                         R7 7
      173 CALL                             R6 1 0
      174 GETIMPORT                        R6 K6 [next]
      176 MOVE                             R7 R1
      177 CALL                             R6 1 1
      178 JUMPIFEQKNIL                     R6 ; [+10]
      180 GETUPVAL                         R6 8
      181 MOVE                             R7 R1
      182 CALL                             R6 1 1
      183 GETUPVAL                         R8 9
      184 GETTABLEKS                       R7 R8 K7 ["error"]
      186 LOADK                            R8 K8 ["Using UNSAFE_componentWillMount in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move code with side effects to componentDidMount, and set initial state in the constructor.\n\nPlease update the following components: %s"]
      187 MOVE                             R9 R6
      188 CALL                             R7 2 0
      189 GETIMPORT                        R6 K6 [next]
      191 MOVE                             R7 R3
      192 CALL                             R6 1 1
      193 JUMPIFEQKNIL                     R6 ; [+10]
      195 GETUPVAL                         R6 8
      196 MOVE                             R7 R3
      197 CALL                             R6 1 1
      198 GETUPVAL                         R8 9
      199 GETTABLEKS                       R7 R8 K7 ["error"]
      201 LOADK                            R8 K9 ["Using UNSAFE_componentWillReceiveProps in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move data fetching code or side effects to componentDidUpdate.\n* If you're updating state whenever props change, refactor your code to use memoization techniques or move it to static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state\n\nPlease update the following components: %s"]
      202 MOVE                             R9 R6
      203 CALL                             R7 2 0
      204 GETIMPORT                        R6 K6 [next]
      206 MOVE                             R7 R5
      207 CALL                             R6 1 1
      208 JUMPIFEQKNIL                     R6 ; [+10]
      210 GETUPVAL                         R6 8
      211 MOVE                             R7 R5
      212 CALL                             R6 1 1
      213 GETUPVAL                         R8 9
      214 GETTABLEKS                       R7 R8 K7 ["error"]
      216 LOADK                            R8 K10 ["Using UNSAFE_componentWillUpdate in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move data fetching code or side effects to componentDidUpdate.\n\nPlease update the following components: %s"]
      217 MOVE                             R9 R6
      218 CALL                             R7 2 0
      219 GETIMPORT                        R6 K6 [next]
      221 MOVE                             R7 R0
      222 CALL                             R6 1 1
      223 JUMPIFEQKNIL                     R6 ; [+10]
      225 GETUPVAL                         R6 8
      226 MOVE                             R7 R0
      227 CALL                             R6 1 1
      228 GETUPVAL                         R8 9
      229 GETTABLEKS                       R7 R8 K11 ["warn"]
      231 LOADK                            R8 K12 ["componentWillMount has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move code with side effects to componentDidMount, and set initial state in the constructor.\n* Rename componentWillMount to UNSAFE_componentWillMount to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n\nPlease update the following components: %s"]
      232 MOVE                             R9 R6
      233 CALL                             R7 2 0
      234 GETIMPORT                        R6 K6 [next]
      236 MOVE                             R7 R2
      237 CALL                             R6 1 1
      238 JUMPIFEQKNIL                     R6 ; [+10]
      240 GETUPVAL                         R6 8
      241 MOVE                             R7 R2
      242 CALL                             R6 1 1
      243 GETUPVAL                         R8 9
      244 GETTABLEKS                       R7 R8 K11 ["warn"]
      246 LOADK                            R8 K13 ["componentWillReceiveProps has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move data fetching code or side effects to componentDidUpdate.\n* If you're updating state whenever props change, refactor your code to use memoization techniques or move it to static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state\n* Rename componentWillReceiveProps to UNSAFE_componentWillReceiveProps to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n\nPlease update the following components: %s"]
      247 MOVE                             R9 R6
      248 CALL                             R7 2 0
      249 GETIMPORT                        R6 K6 [next]
      251 MOVE                             R7 R4
      252 CALL                             R6 1 1
      253 JUMPIFEQKNIL                     R6 ; [+10]
      255 GETUPVAL                         R6 8
      256 MOVE                             R7 R4
      257 CALL                             R6 1 1
      258 GETUPVAL                         R8 9
      259 GETTABLEKS                       R7 R8 K11 ["warn"]
      261 LOADK                            R8 K14 ["componentWillUpdate has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move data fetching code or side effects to componentDidUpdate.\n* Rename componentWillUpdate to UNSAFE_componentWillUpdate to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n\nPlease update the following components: %s"]
      262 MOVE                             R9 R6
      263 CALL                             R7 2 0
      264 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R3
        1 MOVE                             R4 R0
        2 JUMPIFEQKNIL                     R4 ; [+15]
        4 GETTABLEKS                       R6 R4 K0 ["mode"]
        6 GETUPVAL                         R7 0
        7 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
        9 GETIMPORT                        R5 K3 [bit32.band]
       11 CALL                             R5 2 1
       12 JUMPIFEQKN                       R5 K4 [0] ; [+2]
       14 MOVE                             R3 R4
       15 GETTABLEKS                       R4 R4 K5 ["return_"]
       17 JUMPBACK                         ; [-16]
       18 MOVE                             R2 R3
       19 JUMPIFNOTEQKNIL                  R2 ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K6 ["error"]
       24 LOADK                            R4 K7 ["Expected to find a StrictMode component in a strict mode tree. This error is likely caused by a bug in React. Please file an issue."]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R5 R0 K8 ["type"]
       30 GETTABLE                         R3 R4 R5
       31 JUMPIFNOT                        R3 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R4 3
       34 GETTABLE                         R3 R4 R2
       35 GETTABLEKS                       R5 R0 K8 ["type"]
       37 FASTCALL1                        TYPEOF R5 ; [+2]
       38 GETIMPORT                        R4 K10 [typeof]
       40 CALL                             R4 1 1
       41 JUMPIFEQKS                       R4 K11 ["function"] ; [+36]
       43 GETTABLEKS                       R5 R0 K8 ["type"]
       45 GETTABLEKS                       R4 R5 K12 ["contextTypes"]
       47 JUMPIFNOTEQKNIL                  R4 ; [+17]
       49 GETTABLEKS                       R5 R0 K8 ["type"]
       51 GETTABLEKS                       R4 R5 K13 ["childContextTypes"]
       53 JUMPIFNOTEQKNIL                  R4 ; [+11]
       55 JUMPIFEQKNIL                     R1 ; [+22]
       57 GETTABLEKS                       R5 R1 K14 ["getChildContext"]
       59 FASTCALL1                        TYPEOF R5 ; [+2]
       60 GETIMPORT                        R4 K10 [typeof]
       62 CALL                             R4 1 1
       63 JUMPIFNOTEQKS                    R4 K11 ["function"] ; [+14]
       65 JUMPIFNOTEQKNIL                  R3 ; [+5]
       67 NEWTABLE                         R3 0 0
       69 GETUPVAL                         R4 3
       70 SETTABLE                         R3 R4 R2
       71 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       73 MOVE                             R5 R3
       74 MOVE                             R6 R0
       75 GETIMPORT                        R4 K17 [table.insert]
       77 CALL                             R4 2 0
       78 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R0 R1 K0 ["error"]
        6 LOADK                            R1 K1 ["Legacy context API has been detected within a strict-mode tree.\n\nThe old API will be supported in all 16.x releases, but applications using it should migrate to the new version.\n\nPlease update the following components: %s\n\nLearn more about this warning here: https://reactjs.org/link/legacy-context"]
        7 GETUPVAL                         R2 3
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 LENGTH                           R5 R4
        5 JUMPIFNOTEQKN                    R5 K0 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEN                        R5 R4 1
        9 NEWTABLE                         R6 0 0
       11 MOVE                             R7 R4
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 GETUPVAL                         R13 1
       16 GETTABLEKS                       R14 R11 K2 ["type"]
       18 CALL                             R13 1 1
       19 ORK                              R12 R13 K1 ["Component"]
       20 LOADB                            R13 1
       21 SETTABLE                         R13 R6 R12
       22 GETUPVAL                         R12 2
       23 GETTABLEKS                       R13 R11 K2 ["type"]
       25 LOADB                            R14 1
       26 SETTABLE                         R14 R12 R13
       27 FORGLOOP                         R7 2 ; [-13]
       29 GETUPVAL                         R7 3
       30 MOVE                             R8 R6
       31 CALL                             R7 1 1
       32 GETIMPORT                        R8 K4 [pcall]
       34 NEWCLOSURE                       R9 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R7
       39 CALL                             R8 1 2
       40 GETUPVAL                         R10 6
       41 CALL                             R10 0 0
       42 JUMPIF                           R8 ; [+4]
       43 GETIMPORT                        R10 K6 [error]
       45 MOVE                             R11 R9
       46 CALL                             R10 1 0
       47 FORGLOOP                         R0 2 ; [-44]
       49 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETIMPORT                        R0 K2 [table.clear]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 0
       16 GETIMPORT                        R0 K2 [table.clear]
       18 GETUPVAL                         R1 4
       19 CALL                             R0 1 0
       20 GETIMPORT                        R0 K2 [table.clear]
       22 GETUPVAL                         R1 5
       23 CALL                             R0 1 0
       24 GETIMPORT                        R0 K2 [table.clear]
       26 GETUPVAL                         R1 6
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["Shared"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R2 R3 K7 ["console"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R6 K1 [script]
       23 GETTABLEKS                       R5 R6 K2 ["Parent"]
       25 GETTABLEKS                       R4 R5 K8 ["ReactInternalTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K2 ["Parent"]
       34 GETTABLEKS                       R5 R6 K9 ["ReactCurrentFiber"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["resetCurrentFiber"]
       39 GETTABLEKS                       R6 R4 K11 ["setCurrentFiber"]
       41 GETIMPORT                        R8 K4 [require]
       43 GETTABLEKS                       R9 R0 K6 ["Shared"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R7 R8 K12 ["getComponentName"]
       48 GETIMPORT                        R9 K4 [require]
       50 GETIMPORT                        R12 K1 [script]
       52 GETTABLEKS                       R11 R12 K2 ["Parent"]
       54 GETTABLEKS                       R10 R11 K13 ["ReactTypeOfMode"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R8 R9 K14 ["StrictMode"]
       59 DUPTABLE                         R9 K20 [{"recordUnsafeLifecycleWarnings", "flushPendingUnsafeLifecycleWarnings", "recordLegacyContextWarning", "flushLegacyContextWarning", "discardPendingWarnings"}]
       60 DUPCLOSURE                       R10 K21 [PROTO_0]
       61 SETTABLEKS                       R10 R9 K15 ["recordUnsafeLifecycleWarnings"]
       63 DUPCLOSURE                       R10 K22 [PROTO_1]
       64 SETTABLEKS                       R10 R9 K16 ["flushPendingUnsafeLifecycleWarnings"]
       66 DUPCLOSURE                       R10 K23 [PROTO_2]
       67 SETTABLEKS                       R10 R9 K17 ["recordLegacyContextWarning"]
       69 DUPCLOSURE                       R10 K24 [PROTO_3]
       70 SETTABLEKS                       R10 R9 K18 ["flushLegacyContextWarning"]
       72 DUPCLOSURE                       R10 K25 [PROTO_4]
       73 SETTABLEKS                       R10 R9 K19 ["discardPendingWarnings"]
       75 GETTABLEKS                       R10 R1 K26 ["__DEV__"]
       77 JUMPIFNOT                        R10 ; [+72]
       78 DUPCLOSURE                       R10 K27 [PROTO_5]
       79 CAPTURE                          VAL R8
       80 DUPCLOSURE                       R11 K28 [PROTO_6]
       81 NEWTABLE                         R12 0 0
       83 NEWTABLE                         R13 0 0
       85 NEWTABLE                         R14 0 0
       87 NEWTABLE                         R15 0 0
       89 NEWTABLE                         R16 0 0
       91 NEWTABLE                         R17 0 0
       93 NEWTABLE                         R18 0 0
       95 DUPCLOSURE                       R19 K29 [PROTO_7]
       96 CAPTURE                          VAL R18
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R17
      104 SETTABLEKS                       R19 R9 K15 ["recordUnsafeLifecycleWarnings"]
      106 DUPCLOSURE                       R19 K30 [PROTO_8]
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R2
      117 SETTABLEKS                       R19 R9 K16 ["flushPendingUnsafeLifecycleWarnings"]
      119 NEWTABLE                         R19 0 0
      121 NEWTABLE                         R20 0 0
      123 DUPCLOSURE                       R21 K31 [PROTO_9]
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R19
      128 SETTABLEKS                       R21 R9 K17 ["recordLegacyContextWarning"]
      130 DUPCLOSURE                       R21 K32 [PROTO_11]
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R5
      138 SETTABLEKS                       R21 R9 K18 ["flushLegacyContextWarning"]
      140 DUPCLOSURE                       R21 K33 [PROTO_12]
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R19
      148 SETTABLEKS                       R21 R9 K19 ["discardPendingWarnings"]
      150 RETURN                           R9 1
