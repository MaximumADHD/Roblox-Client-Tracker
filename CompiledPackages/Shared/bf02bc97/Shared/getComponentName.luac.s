PROTO_0:
        0 LOADK                            R3 K0 ["<function>"]
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+9]
        8 GETTABLEKS                       R4 R1 K4 ["displayName"]
       10 JUMPIF                           R4 ; [+4]
       11 GETTABLEKS                       R4 R1 K5 ["name"]
       13 JUMPIF                           R4 ; [+1]
       14 LOADK                            R4 K6 [""]
       15 MOVE                             R3 R4
       16 GETTABLEKS                       R4 R0 K4 ["displayName"]
       18 JUMPIF                           R4 ; [+10]
       19 JUMPIFEQKS                       R3 K6 [""] ; [+8]
       21 GETIMPORT                        R4 K9 [string.format]
       23 LOADK                            R5 K10 ["%s(%s)"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R3
       26 CALL                             R4 3 1
       27 JUMPIF                           R4 ; [+1]
       28 MOVE                             R4 R2
       29 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K1 ["displayName"]
        2 ORK                              R1 R2 K0 ["Context"]
        3 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [typeof]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
       12 JUMPIFNOT                        R2 ; [+15]
       13 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+14]
       15 GETTABLEKS                       R3 R0 K4 ["tag"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K1 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K5 ["number"] ; [+6]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K6 ["warn"]
       26 LOADK                            R3 K7 ["Received an unexpected object in getComponentName(). This is likely a bug in React. Please file an issue."]
       27 CALL                             R2 1 0
       28 JUMPIFNOTEQKS                    R1 K8 ["function"] ; [+28]
       30 GETIMPORT                        R2 K11 [debug.info]
       32 MOVE                             R3 R0
       33 LOADK                            R4 K12 ["n"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+9]
       36 FASTCALL1                        STRING_LEN R2 ; [+3]
       37 MOVE                             R4 R2
       38 GETIMPORT                        R3 K15 [string.len]
       40 CALL                             R3 1 1
       41 LOADN                            R4 0
       42 JUMPIFNOTLT                      R4 R3 ; [+2]
       44 RETURN                           R2 1
       45 GETIMPORT                        R3 K11 [debug.info]
       47 MOVE                             R4 R0
       48 LOADK                            R5 K16 ["sl"]
       49 CALL                             R3 2 2
       50 GETIMPORT                        R5 K18 [string.format]
       52 LOADK                            R6 K19 ["%s:%d"]
       53 MOVE                             R7 R3
       54 MOVE                             R8 R4
       55 CALL                             R5 3 -1
       56 RETURN                           R5 -1
       57 JUMPIFNOTEQKS                    R1 K13 ["string"] ; [+2]
       59 RETURN                           R0 1
       60 GETUPVAL                         R2 2
       61 JUMPIFNOTEQ                      R0 R2 ; [+3]
       63 LOADK                            R2 K20 ["Fragment"]
       64 RETURN                           R2 1
       65 GETUPVAL                         R2 3
       66 JUMPIFNOTEQ                      R0 R2 ; [+3]
       68 LOADK                            R2 K21 ["Portal"]
       69 RETURN                           R2 1
       70 GETUPVAL                         R2 4
       71 JUMPIFNOTEQ                      R0 R2 ; [+3]
       73 LOADK                            R2 K22 ["Profiler"]
       74 RETURN                           R2 1
       75 GETUPVAL                         R2 5
       76 JUMPIFNOTEQ                      R0 R2 ; [+3]
       78 LOADK                            R2 K23 ["StrictMode"]
       79 RETURN                           R2 1
       80 GETUPVAL                         R2 6
       81 JUMPIFNOTEQ                      R0 R2 ; [+3]
       83 LOADK                            R2 K24 ["Suspense"]
       84 RETURN                           R2 1
       85 GETUPVAL                         R2 7
       86 JUMPIFNOTEQ                      R0 R2 ; [+3]
       88 LOADK                            R2 K25 ["SuspenseList"]
       89 RETURN                           R2 1
       90 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+127]
       92 GETTABLEKS                       R2 R0 K26 ["$$typeof"]
       94 GETUPVAL                         R3 8
       95 JUMPIFNOTEQ                      R2 R3 ; [+7]
       97 GETTABLEKS                       R6 R0 K28 ["displayName"]
       99 ORK                              R4 R6 K27 ["Context"]
      100 LOADK                            R5 K29 [".Consumer"]
      101 CONCAT                           R3 R4 R5
      102 RETURN                           R3 1
      103 GETUPVAL                         R3 9
      104 JUMPIFNOTEQ                      R2 R3 ; [+9]
      106 GETTABLEKS                       R6 R0 K30 ["_context"]
      108 GETTABLEKS                       R7 R6 K28 ["displayName"]
      110 ORK                              R4 R7 K27 ["Context"]
      111 LOADK                            R5 K31 [".Provider"]
      112 CONCAT                           R3 R4 R5
      113 RETURN                           R3 1
      114 GETUPVAL                         R3 10
      115 JUMPIFNOTEQ                      R2 R3 ; [+34]
      117 GETTABLEKS                       R4 R0 K32 ["render"]
      119 LOADK                            R5 K33 ["<function>"]
      120 FASTCALL1                        TYPEOF R4 ; [+3]
      121 MOVE                             R7 R4
      122 GETIMPORT                        R6 K1 [typeof]
      124 CALL                             R6 1 1
      125 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+9]
      127 GETTABLEKS                       R6 R4 K28 ["displayName"]
      129 JUMPIF                           R6 ; [+4]
      130 GETTABLEKS                       R6 R4 K34 ["name"]
      132 JUMPIF                           R6 ; [+1]
      133 LOADK                            R6 K35 [""]
      134 MOVE                             R5 R6
      135 GETTABLEKS                       R3 R0 K28 ["displayName"]
      137 JUMPIF                           R3 ; [+11]
      138 JUMPIFEQKS                       R5 K35 [""] ; [+9]
      140 GETIMPORT                        R6 K18 [string.format]
      142 LOADK                            R7 K36 ["%s(%s)"]
      143 LOADK                            R8 K37 ["ForwardRef"]
      144 MOVE                             R9 R5
      145 CALL                             R6 3 1
      146 MOVE                             R3 R6
      147 JUMPIF                           R3 ; [+1]
      148 LOADK                            R3 K37 ["ForwardRef"]
      149 RETURN                           R3 1
      150 GETUPVAL                         R3 11
      151 JUMPIFNOTEQ                      R2 R3 ; [+6]
      153 GETUPVAL                         R3 12
      154 GETTABLEKS                       R4 R0 K38 ["type"]
      156 CALL                             R3 1 -1
      157 RETURN                           R3 -1
      158 GETUPVAL                         R3 13
      159 JUMPIFNOTEQ                      R2 R3 ; [+6]
      161 GETUPVAL                         R3 12
      162 GETTABLEKS                       R4 R0 K39 ["_render"]
      164 CALL                             R3 1 -1
      165 RETURN                           R3 -1
      166 GETUPVAL                         R3 14
      167 JUMPIFNOTEQ                      R2 R3 ; [+18]
      169 GETTABLEKS                       R3 R0 K40 ["_payload"]
      171 GETTABLEKS                       R4 R0 K41 ["_init"]
      173 GETIMPORT                        R5 K43 [xpcall]
      175 MOVE                             R6 R4
      176 GETUPVAL                         R7 15
      177 MOVE                             R8 R3
      178 CALL                             R5 3 2
      179 JUMPIFNOT                        R5 ; [+4]
      180 GETUPVAL                         R7 12
      181 MOVE                             R8 R6
      182 CALL                             R7 1 -1
      183 RETURN                           R7 -1
      184 LOADNIL                          R7
      185 RETURN                           R7 1
      186 GETTABLEKS                       R3 R0 K28 ["displayName"]
      188 JUMPIFNOT                        R3 ; [+3]
      189 GETTABLEKS                       R3 R0 K28 ["displayName"]
      191 RETURN                           R3 1
      192 GETTABLEKS                       R3 R0 K34 ["name"]
      194 JUMPIFNOT                        R3 ; [+3]
      195 GETTABLEKS                       R3 R0 K34 ["name"]
      197 RETURN                           R3 1
      198 FASTCALL1                        GETMETATABLE R0 ; [+3]
      199 MOVE                             R4 R0
      200 GETIMPORT                        R3 K45 [getmetatable]
      202 CALL                             R3 1 1
      203 JUMPIFNOT                        R3 ; [+14]
      204 FASTCALL2K                       RAWGET R3 K46 ; [+5]
      206 MOVE                             R5 R3
      207 LOADK                            R6 K46 ["__tostring"]
      208 GETIMPORT                        R4 K48 [rawget]
      210 CALL                             R4 2 1
      211 JUMPIFNOT                        R4 ; [+6]
      212 FASTCALL1                        TOSTRING R0 ; [+3]
      213 MOVE                             R5 R0
      214 GETIMPORT                        R4 K50 [tostring]
      216 CALL                             R4 1 1
      217 RETURN                           R4 1
      218 LOADNIL                          R2
      219 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["console"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K2 ["Parent"]
       27 GETTABLEKS                       R4 R5 K7 ["ReactSymbols"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K8 ["REACT_CONTEXT_TYPE"]
       32 GETTABLEKS                       R5 R3 K9 ["REACT_FORWARD_REF_TYPE"]
       34 GETTABLEKS                       R6 R3 K10 ["REACT_FRAGMENT_TYPE"]
       36 GETTABLEKS                       R7 R3 K11 ["REACT_PORTAL_TYPE"]
       38 GETTABLEKS                       R8 R3 K12 ["REACT_MEMO_TYPE"]
       40 GETTABLEKS                       R9 R3 K13 ["REACT_PROFILER_TYPE"]
       42 GETTABLEKS                       R10 R3 K14 ["REACT_PROVIDER_TYPE"]
       44 GETTABLEKS                       R11 R3 K15 ["REACT_STRICT_MODE_TYPE"]
       46 GETTABLEKS                       R12 R3 K16 ["REACT_SUSPENSE_TYPE"]
       48 GETTABLEKS                       R13 R3 K17 ["REACT_SUSPENSE_LIST_TYPE"]
       50 GETTABLEKS                       R14 R3 K18 ["REACT_LAZY_TYPE"]
       52 GETTABLEKS                       R15 R3 K19 ["REACT_BLOCK_TYPE"]
       54 GETIMPORT                        R16 K4 [require]
       56 GETIMPORT                        R19 K1 [script]
       58 GETTABLEKS                       R18 R19 K2 ["Parent"]
       60 GETTABLEKS                       R17 R18 K20 ["ReactTypes"]
       62 CALL                             R16 1 1
       63 GETIMPORT                        R18 K4 [require]
       65 GETIMPORT                        R21 K1 [script]
       67 GETTABLEKS                       R20 R21 K2 ["Parent"]
       69 GETTABLEKS                       R19 R20 K21 ["ErrorHandling.roblox"]
       71 CALL                             R18 1 1
       72 GETTABLEKS                       R17 R18 K22 ["describeError"]
       74 DUPCLOSURE                       R18 K23 [PROTO_0]
       75 DUPCLOSURE                       R19 K24 [PROTO_1]
       76 DUPCLOSURE                       R20 K25 [PROTO_2]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R20
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R17
       93 RETURN                           R20 1
