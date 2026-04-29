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
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 GETIMPORT                        R2 K6 [table.sort]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETIMPORT                        R2 K8 [table.concat]
       22 MOVE                             R3 R1
       23 LOADK                            R4 K9 [", "]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

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
        5 JUMPIFNOTLT                      R2 R1 ; [+24]
        7 GETIMPORT                        R1 K1 [ipairs]
        9 GETUPVAL                         R2 0
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R8 R5 K3 ["type"]
       15 CALL                             R7 1 1
       16 ORK                              R6 R7 K2 ["Component"]
       17 LOADB                            R7 1
       18 SETTABLE                         R7 R0 R6
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R7 R5 K3 ["type"]
       22 LOADB                            R8 1
       23 SETTABLE                         R8 R6 R7
       24 FORGLOOP                         R1 2 [inext] ; [-13]
       26 GETIMPORT                        R1 K6 [table.clear]
       28 GETUPVAL                         R2 0
       29 CALL                             R1 1 0
       30 NEWTABLE                         R1 0 0
       32 GETUPVAL                         R3 3
       33 LENGTH                           R2 R3
       34 LOADN                            R3 0
       35 JUMPIFNOTLT                      R3 R2 ; [+24]
       37 GETIMPORT                        R2 K1 [ipairs]
       39 GETUPVAL                         R3 3
       40 CALL                             R2 1 3
       41 FORGPREP_INEXT                   R2
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R9 R6 K3 ["type"]
       45 CALL                             R8 1 1
       46 ORK                              R7 R8 K2 ["Component"]
       47 LOADB                            R8 1
       48 SETTABLE                         R8 R1 R7
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R8 R6 K3 ["type"]
       52 LOADB                            R9 1
       53 SETTABLE                         R9 R7 R8
       54 FORGLOOP                         R2 2 [inext] ; [-13]
       56 GETIMPORT                        R2 K6 [table.clear]
       58 GETUPVAL                         R3 3
       59 CALL                             R2 1 0
       60 NEWTABLE                         R2 0 0
       62 GETUPVAL                         R4 4
       63 LENGTH                           R3 R4
       64 LOADN                            R4 0
       65 JUMPIFNOTLT                      R4 R3 ; [+24]
       67 GETIMPORT                        R3 K1 [ipairs]
       69 GETUPVAL                         R4 4
       70 CALL                             R3 1 3
       71 FORGPREP_INEXT                   R3
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R10 R7 K3 ["type"]
       75 CALL                             R9 1 1
       76 ORK                              R8 R9 K2 ["Component"]
       77 LOADB                            R9 1
       78 SETTABLE                         R9 R2 R8
       79 GETUPVAL                         R8 2
       80 GETTABLEKS                       R9 R7 K3 ["type"]
       82 LOADB                            R10 1
       83 SETTABLE                         R10 R8 R9
       84 FORGLOOP                         R3 2 [inext] ; [-13]
       86 GETIMPORT                        R3 K6 [table.clear]
       88 GETUPVAL                         R4 4
       89 CALL                             R3 1 0
       90 NEWTABLE                         R3 0 0
       92 GETUPVAL                         R5 5
       93 LENGTH                           R4 R5
       94 LOADN                            R5 0
       95 JUMPIFNOTLT                      R5 R4 ; [+24]
       97 GETIMPORT                        R4 K1 [ipairs]
       99 GETUPVAL                         R5 5
      100 CALL                             R4 1 3
      101 FORGPREP_INEXT                   R4
      102 GETUPVAL                         R10 1
      103 GETTABLEKS                       R11 R8 K3 ["type"]
      105 CALL                             R10 1 1
      106 ORK                              R9 R10 K2 ["Component"]
      107 LOADB                            R10 1
      108 SETTABLE                         R10 R3 R9
      109 GETUPVAL                         R9 2
      110 GETTABLEKS                       R10 R8 K3 ["type"]
      112 LOADB                            R11 1
      113 SETTABLE                         R11 R9 R10
      114 FORGLOOP                         R4 2 [inext] ; [-13]
      116 GETIMPORT                        R4 K6 [table.clear]
      118 GETUPVAL                         R5 5
      119 CALL                             R4 1 0
      120 NEWTABLE                         R4 0 0
      122 GETUPVAL                         R6 6
      123 LENGTH                           R5 R6
      124 LOADN                            R6 0
      125 JUMPIFNOTLT                      R6 R5 ; [+24]
      127 GETIMPORT                        R5 K1 [ipairs]
      129 GETUPVAL                         R6 6
      130 CALL                             R5 1 3
      131 FORGPREP_INEXT                   R5
      132 GETUPVAL                         R11 1
      133 GETTABLEKS                       R12 R9 K3 ["type"]
      135 CALL                             R11 1 1
      136 ORK                              R10 R11 K2 ["Component"]
      137 LOADB                            R11 1
      138 SETTABLE                         R11 R4 R10
      139 GETUPVAL                         R10 2
      140 GETTABLEKS                       R11 R9 K3 ["type"]
      142 LOADB                            R12 1
      143 SETTABLE                         R12 R10 R11
      144 FORGLOOP                         R5 2 [inext] ; [-13]
      146 GETIMPORT                        R5 K6 [table.clear]
      148 GETUPVAL                         R6 6
      149 CALL                             R5 1 0
      150 NEWTABLE                         R5 0 0
      152 GETUPVAL                         R7 7
      153 LENGTH                           R6 R7
      154 LOADN                            R7 0
      155 JUMPIFNOTLT                      R7 R6 ; [+24]
      157 GETIMPORT                        R6 K1 [ipairs]
      159 GETUPVAL                         R7 7
      160 CALL                             R6 1 3
      161 FORGPREP_INEXT                   R6
      162 GETUPVAL                         R12 1
      163 GETTABLEKS                       R13 R10 K3 ["type"]
      165 CALL                             R12 1 1
      166 ORK                              R11 R12 K2 ["Component"]
      167 LOADB                            R12 1
      168 SETTABLE                         R12 R5 R11
      169 GETUPVAL                         R11 2
      170 GETTABLEKS                       R12 R10 K3 ["type"]
      172 LOADB                            R13 1
      173 SETTABLE                         R13 R11 R12
      174 FORGLOOP                         R6 2 [inext] ; [-13]
      176 GETIMPORT                        R6 K6 [table.clear]
      178 GETUPVAL                         R7 7
      179 CALL                             R6 1 0
      180 GETIMPORT                        R6 K8 [next]
      182 MOVE                             R7 R1
      183 CALL                             R6 1 1
      184 JUMPIFEQKNIL                     R6 ; [+10]
      186 GETUPVAL                         R6 8
      187 MOVE                             R7 R1
      188 CALL                             R6 1 1
      189 GETUPVAL                         R8 9
      190 GETTABLEKS                       R7 R8 K9 ["error"]
      192 LOADK                            R8 K10 ["Using UNSAFE_componentWillMount in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move code with side effects to componentDidMount, and set initial state in the constructor.\n\nPlease update the following components: %s"]
      193 MOVE                             R9 R6
      194 CALL                             R7 2 0
      195 GETIMPORT                        R6 K8 [next]
      197 MOVE                             R7 R3
      198 CALL                             R6 1 1
      199 JUMPIFEQKNIL                     R6 ; [+10]
      201 GETUPVAL                         R6 8
      202 MOVE                             R7 R3
      203 CALL                             R6 1 1
      204 GETUPVAL                         R8 9
      205 GETTABLEKS                       R7 R8 K9 ["error"]
      207 LOADK                            R8 K11 ["Using UNSAFE_componentWillReceiveProps in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move data fetching code or side effects to componentDidUpdate.\n* If you're updating state whenever props change, refactor your code to use memoization techniques or move it to static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state\n\nPlease update the following components: %s"]
      208 MOVE                             R9 R6
      209 CALL                             R7 2 0
      210 GETIMPORT                        R6 K8 [next]
      212 MOVE                             R7 R5
      213 CALL                             R6 1 1
      214 JUMPIFEQKNIL                     R6 ; [+10]
      216 GETUPVAL                         R6 8
      217 MOVE                             R7 R5
      218 CALL                             R6 1 1
      219 GETUPVAL                         R8 9
      220 GETTABLEKS                       R7 R8 K9 ["error"]
      222 LOADK                            R8 K12 ["Using UNSAFE_componentWillUpdate in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move data fetching code or side effects to componentDidUpdate.\n\nPlease update the following components: %s"]
      223 MOVE                             R9 R6
      224 CALL                             R7 2 0
      225 GETIMPORT                        R6 K8 [next]
      227 MOVE                             R7 R0
      228 CALL                             R6 1 1
      229 JUMPIFEQKNIL                     R6 ; [+10]
      231 GETUPVAL                         R6 8
      232 MOVE                             R7 R0
      233 CALL                             R6 1 1
      234 GETUPVAL                         R8 9
      235 GETTABLEKS                       R7 R8 K13 ["warn"]
      237 LOADK                            R8 K14 ["componentWillMount has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move code with side effects to componentDidMount, and set initial state in the constructor.\n* Rename componentWillMount to UNSAFE_componentWillMount to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n\nPlease update the following components: %s"]
      238 MOVE                             R9 R6
      239 CALL                             R7 2 0
      240 GETIMPORT                        R6 K8 [next]
      242 MOVE                             R7 R2
      243 CALL                             R6 1 1
      244 JUMPIFEQKNIL                     R6 ; [+10]
      246 GETUPVAL                         R6 8
      247 MOVE                             R7 R2
      248 CALL                             R6 1 1
      249 GETUPVAL                         R8 9
      250 GETTABLEKS                       R7 R8 K13 ["warn"]
      252 LOADK                            R8 K15 ["componentWillReceiveProps has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move data fetching code or side effects to componentDidUpdate.\n* If you're updating state whenever props change, refactor your code to use memoization techniques or move it to static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state\n* Rename componentWillReceiveProps to UNSAFE_componentWillReceiveProps to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n\nPlease update the following components: %s"]
      253 MOVE                             R9 R6
      254 CALL                             R7 2 0
      255 GETIMPORT                        R6 K8 [next]
      257 MOVE                             R7 R4
      258 CALL                             R6 1 1
      259 JUMPIFEQKNIL                     R6 ; [+10]
      261 GETUPVAL                         R6 8
      262 MOVE                             R7 R4
      263 CALL                             R6 1 1
      264 GETUPVAL                         R8 9
      265 GETTABLEKS                       R7 R8 K13 ["warn"]
      267 LOADK                            R8 K16 ["componentWillUpdate has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n* Move data fetching code or side effects to componentDidUpdate.\n* Rename componentWillUpdate to UNSAFE_componentWillUpdate to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n\nPlease update the following components: %s"]
      268 MOVE                             R9 R6
      269 CALL                             R7 2 0
      270 RETURN                           R0 0

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
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_NEXT                    R0
        5 LENGTH                           R5 R4
        6 JUMPIFNOTEQKN                    R5 K2 [0] ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEN                        R5 R4 1
       10 NEWTABLE                         R6 0 0
       12 GETIMPORT                        R7 K4 [ipairs]
       14 MOVE                             R8 R4
       15 CALL                             R7 1 3
       16 FORGPREP_INEXT                   R7
       17 GETUPVAL                         R13 1
       18 GETTABLEKS                       R14 R11 K6 ["type"]
       20 CALL                             R13 1 1
       21 ORK                              R12 R13 K5 ["Component"]
       22 LOADB                            R13 1
       23 SETTABLE                         R13 R6 R12
       24 GETUPVAL                         R12 2
       25 GETTABLEKS                       R13 R11 K6 ["type"]
       27 LOADB                            R14 1
       28 SETTABLE                         R14 R12 R13
       29 FORGLOOP                         R7 2 [inext] ; [-13]
       31 GETUPVAL                         R7 3
       32 MOVE                             R8 R6
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K8 [pcall]
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R5
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R7
       41 CALL                             R8 1 2
       42 GETUPVAL                         R10 6
       43 CALL                             R10 0 0
       44 JUMPIF                           R8 ; [+4]
       45 GETIMPORT                        R10 K10 [error]
       47 MOVE                             R11 R9
       48 CALL                             R10 1 0
       49 FORGLOOP                         R0 2 ; [-45]
       51 RETURN                           R0 0

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
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Shared"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["console"]
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K2 ["Parent"]
       20 GETTABLEKS                       R3 R4 K7 ["ReactInternalTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K2 ["Parent"]
       29 GETTABLEKS                       R4 R5 K8 ["ReactCurrentFiber"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["resetCurrentFiber"]
       34 GETTABLEKS                       R5 R3 K10 ["setCurrentFiber"]
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R0 K5 ["Shared"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R6 R7 K11 ["getComponentName"]
       43 GETIMPORT                        R8 K4 [require]
       45 GETIMPORT                        R11 K1 [script]
       47 GETTABLEKS                       R10 R11 K2 ["Parent"]
       49 GETTABLEKS                       R9 R10 K12 ["ReactTypeOfMode"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R7 R8 K13 ["StrictMode"]
       54 DUPTABLE                         R8 K19 [{"recordUnsafeLifecycleWarnings", "flushPendingUnsafeLifecycleWarnings", "recordLegacyContextWarning", "flushLegacyContextWarning", "discardPendingWarnings"}]
       55 DUPCLOSURE                       R9 K20 [PROTO_0]
       56 SETTABLEKS                       R9 R8 K14 ["recordUnsafeLifecycleWarnings"]
       58 DUPCLOSURE                       R9 K21 [PROTO_1]
       59 SETTABLEKS                       R9 R8 K15 ["flushPendingUnsafeLifecycleWarnings"]
       61 DUPCLOSURE                       R9 K22 [PROTO_2]
       62 SETTABLEKS                       R9 R8 K16 ["recordLegacyContextWarning"]
       64 DUPCLOSURE                       R9 K23 [PROTO_3]
       65 SETTABLEKS                       R9 R8 K17 ["flushLegacyContextWarning"]
       67 DUPCLOSURE                       R9 K24 [PROTO_4]
       68 SETTABLEKS                       R9 R8 K18 ["discardPendingWarnings"]
       70 GETIMPORT                        R10 K26 [_G]
       72 GETTABLEKS                       R9 R10 K27 ["__DEV__"]
       74 JUMPIFNOT                        R9 ; [+72]
       75 DUPCLOSURE                       R9 K28 [PROTO_5]
       76 CAPTURE                          VAL R7
       77 DUPCLOSURE                       R10 K29 [PROTO_6]
       78 NEWTABLE                         R11 0 0
       80 NEWTABLE                         R12 0 0
       82 NEWTABLE                         R13 0 0
       84 NEWTABLE                         R14 0 0
       86 NEWTABLE                         R15 0 0
       88 NEWTABLE                         R16 0 0
       90 NEWTABLE                         R17 0 0
       92 DUPCLOSURE                       R18 K30 [PROTO_7]
       93 CAPTURE                          VAL R17
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R16
      101 SETTABLEKS                       R18 R8 K14 ["recordUnsafeLifecycleWarnings"]
      103 DUPCLOSURE                       R18 K31 [PROTO_8]
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R18 R8 K15 ["flushPendingUnsafeLifecycleWarnings"]
      116 NEWTABLE                         R18 0 0
      118 NEWTABLE                         R19 0 0
      120 DUPCLOSURE                       R20 K32 [PROTO_9]
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R18
      125 SETTABLEKS                       R20 R8 K16 ["recordLegacyContextWarning"]
      127 DUPCLOSURE                       R20 K33 [PROTO_11]
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R4
      135 SETTABLEKS                       R20 R8 K17 ["flushLegacyContextWarning"]
      137 DUPCLOSURE                       R20 K34 [PROTO_12]
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R18
      145 SETTABLEKS                       R20 R8 K18 ["discardPendingWarnings"]
      147 RETURN                           R8 1
