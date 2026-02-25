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
        9 GETIMPORT                        R3 K3 [_G]
       11 GETTABLEKS                       R2 R3 K4 ["__DEV__"]
       13 JUMPIFNOT                        R2 ; [+15]
       14 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+14]
       16 GETTABLEKS                       R3 R0 K6 ["tag"]
       18 FASTCALL1                        TYPEOF R3 ; [+2]
       19 GETIMPORT                        R2 K1 [typeof]
       21 CALL                             R2 1 1
       22 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+6]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K8 ["warn"]
       27 LOADK                            R3 K9 ["Received an unexpected object in getComponentName(). This is likely a bug in React. Please file an issue."]
       28 CALL                             R2 1 0
       29 JUMPIFNOTEQKS                    R1 K10 ["function"] ; [+28]
       31 GETIMPORT                        R2 K13 [debug.info]
       33 MOVE                             R3 R0
       34 LOADK                            R4 K14 ["n"]
       35 CALL                             R2 2 1
       36 JUMPIFNOT                        R2 ; [+9]
       37 FASTCALL1                        STRING_LEN R2 ; [+3]
       38 MOVE                             R4 R2
       39 GETIMPORT                        R3 K17 [string.len]
       41 CALL                             R3 1 1
       42 LOADN                            R4 0
       43 JUMPIFNOTLT                      R4 R3 ; [+2]
       45 RETURN                           R2 1
       46 GETIMPORT                        R3 K13 [debug.info]
       48 MOVE                             R4 R0
       49 LOADK                            R5 K18 ["sl"]
       50 CALL                             R3 2 2
       51 GETIMPORT                        R5 K20 [string.format]
       53 LOADK                            R6 K21 ["%s:%d"]
       54 MOVE                             R7 R3
       55 MOVE                             R8 R4
       56 CALL                             R5 3 -1
       57 RETURN                           R5 -1
       58 JUMPIFNOTEQKS                    R1 K15 ["string"] ; [+2]
       60 RETURN                           R0 1
       61 GETUPVAL                         R2 1
       62 JUMPIFNOTEQ                      R0 R2 ; [+3]
       64 LOADK                            R2 K22 ["Fragment"]
       65 RETURN                           R2 1
       66 GETUPVAL                         R2 2
       67 JUMPIFNOTEQ                      R0 R2 ; [+3]
       69 LOADK                            R2 K23 ["Portal"]
       70 RETURN                           R2 1
       71 GETUPVAL                         R2 3
       72 JUMPIFNOTEQ                      R0 R2 ; [+3]
       74 LOADK                            R2 K24 ["Profiler"]
       75 RETURN                           R2 1
       76 GETUPVAL                         R2 4
       77 JUMPIFNOTEQ                      R0 R2 ; [+3]
       79 LOADK                            R2 K25 ["StrictMode"]
       80 RETURN                           R2 1
       81 GETUPVAL                         R2 5
       82 JUMPIFNOTEQ                      R0 R2 ; [+3]
       84 LOADK                            R2 K26 ["Suspense"]
       85 RETURN                           R2 1
       86 GETUPVAL                         R2 6
       87 JUMPIFNOTEQ                      R0 R2 ; [+3]
       89 LOADK                            R2 K27 ["SuspenseList"]
       90 RETURN                           R2 1
       91 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+127]
       93 GETTABLEKS                       R2 R0 K28 ["$$typeof"]
       95 GETUPVAL                         R3 7
       96 JUMPIFNOTEQ                      R2 R3 ; [+7]
       98 GETTABLEKS                       R6 R0 K30 ["displayName"]
      100 ORK                              R4 R6 K29 ["Context"]
      101 LOADK                            R5 K31 [".Consumer"]
      102 CONCAT                           R3 R4 R5
      103 RETURN                           R3 1
      104 GETUPVAL                         R3 8
      105 JUMPIFNOTEQ                      R2 R3 ; [+9]
      107 GETTABLEKS                       R6 R0 K32 ["_context"]
      109 GETTABLEKS                       R7 R6 K30 ["displayName"]
      111 ORK                              R4 R7 K29 ["Context"]
      112 LOADK                            R5 K33 [".Provider"]
      113 CONCAT                           R3 R4 R5
      114 RETURN                           R3 1
      115 GETUPVAL                         R3 9
      116 JUMPIFNOTEQ                      R2 R3 ; [+34]
      118 GETTABLEKS                       R4 R0 K34 ["render"]
      120 LOADK                            R5 K35 ["<function>"]
      121 FASTCALL1                        TYPEOF R4 ; [+3]
      122 MOVE                             R7 R4
      123 GETIMPORT                        R6 K1 [typeof]
      125 CALL                             R6 1 1
      126 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+9]
      128 GETTABLEKS                       R6 R4 K30 ["displayName"]
      130 JUMPIF                           R6 ; [+4]
      131 GETTABLEKS                       R6 R4 K36 ["name"]
      133 JUMPIF                           R6 ; [+1]
      134 LOADK                            R6 K37 [""]
      135 MOVE                             R5 R6
      136 GETTABLEKS                       R3 R0 K30 ["displayName"]
      138 JUMPIF                           R3 ; [+11]
      139 JUMPIFEQKS                       R5 K37 [""] ; [+9]
      141 GETIMPORT                        R6 K20 [string.format]
      143 LOADK                            R7 K38 ["%s(%s)"]
      144 LOADK                            R8 K39 ["ForwardRef"]
      145 MOVE                             R9 R5
      146 CALL                             R6 3 1
      147 MOVE                             R3 R6
      148 JUMPIF                           R3 ; [+1]
      149 LOADK                            R3 K39 ["ForwardRef"]
      150 RETURN                           R3 1
      151 GETUPVAL                         R3 10
      152 JUMPIFNOTEQ                      R2 R3 ; [+6]
      154 GETUPVAL                         R3 11
      155 GETTABLEKS                       R4 R0 K40 ["type"]
      157 CALL                             R3 1 -1
      158 RETURN                           R3 -1
      159 GETUPVAL                         R3 12
      160 JUMPIFNOTEQ                      R2 R3 ; [+6]
      162 GETUPVAL                         R3 11
      163 GETTABLEKS                       R4 R0 K41 ["_render"]
      165 CALL                             R3 1 -1
      166 RETURN                           R3 -1
      167 GETUPVAL                         R3 13
      168 JUMPIFNOTEQ                      R2 R3 ; [+18]
      170 GETTABLEKS                       R3 R0 K42 ["_payload"]
      172 GETTABLEKS                       R4 R0 K43 ["_init"]
      174 GETIMPORT                        R5 K45 [xpcall]
      176 MOVE                             R6 R4
      177 GETUPVAL                         R7 14
      178 MOVE                             R8 R3
      179 CALL                             R5 3 2
      180 JUMPIFNOT                        R5 ; [+4]
      181 GETUPVAL                         R7 11
      182 MOVE                             R8 R6
      183 CALL                             R7 1 -1
      184 RETURN                           R7 -1
      185 LOADNIL                          R7
      186 RETURN                           R7 1
      187 GETTABLEKS                       R3 R0 K30 ["displayName"]
      189 JUMPIFNOT                        R3 ; [+3]
      190 GETTABLEKS                       R3 R0 K30 ["displayName"]
      192 RETURN                           R3 1
      193 GETTABLEKS                       R3 R0 K36 ["name"]
      195 JUMPIFNOT                        R3 ; [+3]
      196 GETTABLEKS                       R3 R0 K36 ["name"]
      198 RETURN                           R3 1
      199 FASTCALL1                        GETMETATABLE R0 ; [+3]
      200 MOVE                             R4 R0
      201 GETIMPORT                        R3 K47 [getmetatable]
      203 CALL                             R3 1 1
      204 JUMPIFNOT                        R3 ; [+14]
      205 FASTCALL2K                       RAWGET R3 K48 ; [+5]
      207 MOVE                             R5 R3
      208 LOADK                            R6 K48 ["__tostring"]
      209 GETIMPORT                        R4 K50 [rawget]
      211 CALL                             R4 2 1
      212 JUMPIFNOT                        R4 ; [+6]
      213 FASTCALL1                        TOSTRING R0 ; [+3]
      214 MOVE                             R5 R0
      215 GETIMPORT                        R4 K52 [tostring]
      217 CALL                             R4 1 1
      218 RETURN                           R4 1
      219 LOADNIL                          R2
      220 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["console"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["ReactSymbols"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K7 ["REACT_CONTEXT_TYPE"]
       21 GETTABLEKS                       R3 R1 K8 ["REACT_FORWARD_REF_TYPE"]
       23 GETTABLEKS                       R4 R1 K9 ["REACT_FRAGMENT_TYPE"]
       25 GETTABLEKS                       R5 R1 K10 ["REACT_PORTAL_TYPE"]
       27 GETTABLEKS                       R6 R1 K11 ["REACT_MEMO_TYPE"]
       29 GETTABLEKS                       R7 R1 K12 ["REACT_PROFILER_TYPE"]
       31 GETTABLEKS                       R8 R1 K13 ["REACT_PROVIDER_TYPE"]
       33 GETTABLEKS                       R9 R1 K14 ["REACT_STRICT_MODE_TYPE"]
       35 GETTABLEKS                       R10 R1 K15 ["REACT_SUSPENSE_TYPE"]
       37 GETTABLEKS                       R11 R1 K16 ["REACT_SUSPENSE_LIST_TYPE"]
       39 GETTABLEKS                       R12 R1 K17 ["REACT_LAZY_TYPE"]
       41 GETTABLEKS                       R13 R1 K18 ["REACT_BLOCK_TYPE"]
       43 GETIMPORT                        R14 K1 [require]
       45 GETIMPORT                        R17 K3 [script]
       47 GETTABLEKS                       R16 R17 K4 ["Parent"]
       49 GETTABLEKS                       R15 R16 K19 ["ReactTypes"]
       51 CALL                             R14 1 1
       52 GETIMPORT                        R16 K1 [require]
       54 GETIMPORT                        R19 K3 [script]
       56 GETTABLEKS                       R18 R19 K4 ["Parent"]
       58 GETTABLEKS                       R17 R18 K20 ["ErrorHandling.roblox"]
       60 CALL                             R16 1 1
       61 GETTABLEKS                       R15 R16 K21 ["describeError"]
       63 DUPCLOSURE                       R16 K22 [PROTO_0]
       64 DUPCLOSURE                       R17 K23 [PROTO_1]
       65 DUPCLOSURE                       R18 K24 [PROTO_2]
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R18
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R15
       81 RETURN                           R18 1
