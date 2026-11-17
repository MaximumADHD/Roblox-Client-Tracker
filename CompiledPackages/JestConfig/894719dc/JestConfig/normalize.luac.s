PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Instance"] ; [+24]
        7 GETIMPORT                        R2 K4 [error]
        9 GETUPVAL                         R3 0
       10 LOADK                            R4 K5 ["  Directory %s in the %s option was not found."]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K6 ["bold"]
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R8 R0
       16 GETIMPORT                        R7 K8 [tostring]
       18 CALL                             R7 1 1
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K6 ["bold"]
       23 MOVE                             R8 R1
       24 CALL                             R7 1 -1
       25 NAMECALL                         R4 R4 K9 ["format"]
       27 CALL                             R4 -1 -1
       28 CALL                             R3 -1 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R4 R0 K1 ["id"]
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+7]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R0 K2 ["rootDir"]
       10 LOADNIL                          R5
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R0 K1 ["id"]
       14 GETTABLEKS                       R3 R0 K3 ["setupFiles"]
       16 JUMPIFNOTEQKNIL                  R3 ; [+5]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R0 K3 ["setupFiles"]
       22 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R2 R0 K1 ["rootDir"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+14]
        7 GETIMPORT                        R1 K3 [error]
        9 GETUPVAL                         R2 1
       10 LOADK                            R3 K4 ["  Configuration option %s must be specified."]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K5 ["bold"]
       14 LOADK                            R6 K1 ["rootDir"]
       15 CALL                             R5 1 -1
       16 NAMECALL                         R3 R3 K6 ["format"]
       18 CALL                             R3 -1 -1
       19 CALL                             R2 -1 -1
       20 CALL                             R1 -1 0
       21 GETTABLEKS                       R1 R0 K1 ["rootDir"]
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K8 [typeof]
       27 CALL                             R2 1 1
       28 JUMPIFEQKS                       R2 K9 ["Instance"] ; [+24]
       30 GETIMPORT                        R2 K3 [error]
       32 GETUPVAL                         R3 1
       33 LOADK                            R4 K10 ["  Directory %s in the %s option was not found."]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K5 ["bold"]
       37 FASTCALL1                        TOSTRING R1 ; [+3]
       38 MOVE                             R8 R1
       39 GETIMPORT                        R7 K12 [tostring]
       41 CALL                             R7 1 1
       42 CALL                             R6 1 1
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K5 ["bold"]
       46 LOADK                            R8 K1 ["rootDir"]
       47 CALL                             R7 1 -1
       48 NAMECALL                         R4 R4 K6 ["format"]
       50 CALL                             R4 -1 -1
       51 CALL                             R3 -1 -1
       52 CALL                             R2 -1 0
       53 GETUPVAL                         R1 3
       54 GETTABLEKS                       R1 R1 K13 ["assign"]
       56 NEWTABLE                         R2 0 0
       58 MOVE                             R3 R0
       59 DUPTABLE                         R4 K14 [{"rootDir"}]
       60 GETTABLEKS                       R5 R0 K1 ["rootDir"]
       62 SETTABLEKS                       R5 R4 K1 ["rootDir"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

PROTO_8:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+9]
        7 DUPTABLE                         R1 K5 [{"reporter", "options"}]
        8 SETTABLEKS                       R0 R1 K3 ["reporter"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K4 ["options"]
       14 JUMP                             ; [+1]
       15 MOVE                             R1 R0
       16 GETTABLEKS                       R2 R1 K3 ["reporter"]
       18 GETUPVAL                         R4 0
       19 GETTABLE                         R3 R4 R2
       20 JUMPIF                           R3 ; [+22]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R2
       23 FASTPCALL                        pcall 1 ; [+2]
       24 GETIMPORT                        R3 K7 [pcall]
       26 CALL                             R3 1 2
       27 JUMPIFNOT                        R3 ; [+1]
       28 JUMPIF                           R4 ; [+14]
       29 GETIMPORT                        R5 K9 [error]
       31 LOADK                            R7 K10 ["Could not resolve a module for a custom reporter.\n"]
       32 LOADK                            R8 K11 ["  Module name: %s\n"]
       33 FASTCALL1                        TOSTRING R2 ; [+3]
       34 MOVE                             R11 R2
       35 GETIMPORT                        R10 K13 [tostring]
       37 CALL                             R10 1 1
       38 NAMECALL                         R8 R8 K14 ["format"]
       40 CALL                             R8 2 1
       41 CONCAT                           R6 R7 R8
       42 CALL                             R5 1 0
       43 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["reporters"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["isArray"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 1
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["map"]
       16 MOVE                             R3 R1
       17 DUPCLOSURE                       R4 K3 [PROTO_8]
       18 CAPTURE                          UPVAL U2
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R0 K0 ["reporters"]
       22 RETURN                           R0 1

PROTO_10:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_"]
        4 JUMPIFEQKNIL                     R2 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["concat"]
        9 MOVE                             R3 R1
       10 GETTABLEKS                       R4 R0 K0 ["_"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 GETTABLEKS                       R2 R0 K2 ["testPathPattern"]
       16 JUMPIFEQKNIL                     R2 ; [+9]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["concat"]
       21 MOVE                             R3 R1
       22 GETTABLEKS                       R4 R0 K2 ["testPathPattern"]
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 DUPCLOSURE                       R2 K3 [PROTO_10]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K4 ["join"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K5 ["map"]
       33 MOVE                             R5 R1
       34 MOVE                             R6 R2
       35 CALL                             R4 2 1
       36 LOADK                            R5 K6 ["|"]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 1
       39 MOVE                             R5 R3
       40 CALL                             R4 1 1
       41 JUMPIFNOT                        R4 ; [+1]
       42 RETURN                           R3 1
       43 GETUPVAL                         R4 2
       44 MOVE                             R5 R3
       45 CALL                             R4 1 0
       46 LOADK                            R4 K7 [""]
       47 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["stdout"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["log"]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K2 ["red"]
       11 LOADK                            R4 K3 ["  Invalid testPattern %s supplied. "]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K5 [tostring]
       16 CALL                             R6 1 1
       17 NAMECALL                         R4 R4 K6 ["format"]
       19 CALL                             R4 2 1
       20 LOADK                            R5 K7 ["Running all tests instead."]
       21 CONCAT                           R3 R4 R5
       22 CALL                             R2 1 -1
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOTEQKS                    R0 K0 ["<rootDir>"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["rootDir"]
        5 RETURN                           R1 1
        6 MOVE                             R1 R0
        7 RETURN                           R1 1

PROTO_14:
        0 JUMPIFNOTEQKS                    R0 K0 ["<rootDir>"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["rootDir"]
        5 RETURN                           R1 1
        6 MOVE                             R1 R0
        7 RETURN                           R1 1

PROTO_15:
        0 RETURN                           R0 1

PROTO_16:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["concat"]
        5 MOVE                             R4 R0
        6 LENGTH                           R6 R2
        7 LOADN                            R7 0
        8 JUMPIFNOTLT                      R7 R6 ; [+3]
       10 MOVE                             R5 R2
       11 JUMP                             ; [+5]
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R1
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_17:
        0 JUMPIFNOTEQKS                    R1 K0 ["resolver"] ; [+2]
        2 RETURN                           R0 1
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 JUMPIFEQKS                       R1 K1 ["setupFiles"] ; [+5]
        7 JUMPIFEQKS                       R1 K2 ["setupFilesAfterEnv"] ; [+3]
        9 JUMPIFNOTEQKS                    R1 K3 ["snapshotSerializers"] ; [+13]
       11 GETTABLE                         R4 R2 R1
       12 JUMPIFEQKNIL                     R4 ; [+365]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["map"]
       17 MOVE                             R6 R4
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U0
       20 CALL                             R5 2 1
       21 MOVE                             R3 R5
       22 JUMP                             ; [+355]
       23 JUMPIFEQKS                       R1 K5 ["modulePaths"] ; [+3]
       25 JUMPIFNOTEQKS                    R1 K6 ["roots"] ; [+13]
       27 GETTABLE                         R4 R2 R1
       28 JUMPIFEQKNIL                     R4 ; [+349]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K4 ["map"]
       33 MOVE                             R6 R4
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U0
       36 CALL                             R5 2 1
       37 MOVE                             R3 R5
       38 JUMP                             ; [+339]
       39 JUMPIFNOTEQKS                    R1 K7 ["testPathIgnorePatterns"] ; [+3]
       41 GETTABLE                         R3 R2 R1
       42 JUMP                             ; [+335]
       43 JUMPIFNOTEQKS                    R1 K8 ["projects"] ; [+26]
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K9 ["reduce"]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K4 ["map"]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K10 ["toJSBoolean"]
       54 GETTABLE                         R8 R2 R1
       55 CALL                             R7 1 1
       56 JUMPIFNOT                        R7 ; [+2]
       57 GETTABLE                         R6 R2 R1
       58 JUMPIF                           R6 ; [+2]
       59 NEWTABLE                         R6 0 0
       61 DUPCLOSURE                       R7 K11 [PROTO_15]
       62 CALL                             R5 2 1
       63 DUPCLOSURE                       R6 K12 [PROTO_16]
       64 CAPTURE                          UPVAL U1
       65 NEWTABLE                         R7 0 0
       67 CALL                             R4 3 1
       68 MOVE                             R3 R4
       69 JUMP                             ; [+308]
       70 JUMPIFEQKS                       R1 K13 ["moduleDirectories"] ; [+3]
       72 JUMPIFNOTEQKS                    R1 K14 ["testMatch"] ; [+22]
       74 GETTABLE                         R4 R2 R1
       75 JUMPIFEQKNIL                     R4 ; [+17]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K15 ["isArray"]
       80 MOVE                             R6 R4
       81 CALL                             R5 1 1
       82 JUMPIFNOT                        R5 ; [+8]
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R5 R5 K4 ["map"]
       86 MOVE                             R6 R4
       87 GETUPVAL                         R7 3
       88 CALL                             R5 2 1
       89 MOVE                             R3 R5
       90 JUMP                             ; [+287]
       91 MOVE                             R3 R4
       92 JUMP                             ; [+285]
       93 MOVE                             R3 R4
       94 JUMP                             ; [+283]
       95 JUMPIFNOTEQKS                    R1 K16 ["testRegex"] ; [+33]
       97 GETTABLE                         R4 R2 R1
       98 JUMPIFEQKNIL                     R4 ; [+27]
      100 GETUPVAL                         R5 2
      101 GETTABLEKS                       R5 R5 K10 ["toJSBoolean"]
      103 MOVE                             R6 R4
      104 CALL                             R5 1 1
      105 JUMPIFNOT                        R5 ; [+20]
      106 GETUPVAL                         R5 1
      107 GETTABLEKS                       R5 R5 K4 ["map"]
      109 GETUPVAL                         R7 1
      110 GETTABLEKS                       R7 R7 K15 ["isArray"]
      112 MOVE                             R8 R4
      113 CALL                             R7 1 1
      114 JUMPIFNOT                        R7 ; [+2]
      115 MOVE                             R6 R4
      116 JUMP                             ; [+5]
      117 NEWTABLE                         R6 0 1
      119 MOVE                             R7 R4
      120 SETLIST                          R6 R7 1 [1]
      122 GETUPVAL                         R7 4
      123 CALL                             R5 2 1
      124 MOVE                             R3 R5
      125 JUMP                             ; [+252]
      126 NEWTABLE                         R3 0 0
      128 JUMP                             ; [+249]
      129 JUMPIFNOTEQKS                    R1 K17 ["bail"] ; [+34]
      131 GETTABLE                         R4 R2 R1
      132 FASTCALL1                        TYPEOF R4 ; [+3]
      133 MOVE                             R6 R4
      134 GETIMPORT                        R5 K19 [typeof]
      136 CALL                             R5 1 1
      137 JUMPIFNOTEQKS                    R5 K20 ["boolean"] ; [+6]
      139 JUMPIFNOT                        R4 ; [+2]
      140 LOADN                            R3 1
      141 JUMP                             ; [+236]
      142 LOADN                            R3 0
      143 JUMP                             ; [+234]
      144 FASTCALL1                        TYPEOF R4 ; [+3]
      145 MOVE                             R6 R4
      146 GETIMPORT                        R5 K19 [typeof]
      148 CALL                             R5 1 1
      149 JUMPIFNOTEQKS                    R5 K21 ["string"] ; [+12]
      151 LOADN                            R3 1
      152 GETUPVAL                         R6 5
      153 GETTABLEKS                       R6 R6 K22 ["_"]
      155 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
      157 MOVE                             R7 R4
      158 GETIMPORT                        R5 K25 [table.insert]
      160 CALL                             R5 2 0
      161 JUMP                             ; [+216]
      162 GETTABLE                         R3 R2 R1
      163 JUMP                             ; [+214]
      164 JUMPIFNOTEQKS                    R1 K26 ["displayName"] ; [+73]
      166 GETTABLE                         R4 R2 R1
      167 FASTCALL1                        TYPEOF R4 ; [+3]
      168 MOVE                             R6 R4
      169 GETIMPORT                        R5 K19 [typeof]
      171 CALL                             R5 1 1
      172 JUMPIFNOTEQKS                    R5 K23 ["table"] ; [+53]
      174 GETTABLEKS                       R5 R4 K27 ["name"]
      176 GETTABLEKS                       R6 R4 K28 ["color"]
      178 GETUPVAL                         R7 2
      179 GETTABLEKS                       R7 R7 K10 ["toJSBoolean"]
      181 MOVE                             R8 R5
      182 CALL                             R7 1 1
      183 JUMPIFNOT                        R7 ; [+20]
      184 GETUPVAL                         R7 2
      185 GETTABLEKS                       R7 R7 K10 ["toJSBoolean"]
      187 MOVE                             R8 R6
      188 CALL                             R7 1 1
      189 JUMPIFNOT                        R7 ; [+14]
      190 FASTCALL1                        TYPEOF R5 ; [+3]
      191 MOVE                             R8 R5
      192 GETIMPORT                        R7 K19 [typeof]
      194 CALL                             R7 1 1
      195 JUMPIFNOTEQKS                    R7 K21 ["string"] ; [+8]
      197 FASTCALL1                        TYPEOF R6 ; [+3]
      198 MOVE                             R8 R6
      199 GETIMPORT                        R7 K19 [typeof]
      201 CALL                             R7 1 1
      202 JUMPIFEQKS                       R7 K21 ["string"] ; [+21]
      204 LOADK                            R8 K29 ["  Option \"%s\" must be of type:\n\n"]
      205 GETUPVAL                         R10 6
      206 GETTABLEKS                       R10 R10 K30 ["bold"]
      208 LOADK                            R11 K26 ["displayName"]
      209 CALL                             R10 1 -1
      210 NAMECALL                         R8 R8 K31 ["format"]
      212 CALL                             R8 -1 1
      213 LOADK                            R9 K32 ["  {\n"]
      214 LOADK                            R10 K33 ["    name: string;\n"]
      215 LOADK                            R11 K34 ["    color: string;\n"]
      216 LOADK                            R12 K35 ["  }\n"]
      217 CONCAT                           R7 R8 R12
      218 GETIMPORT                        R8 K37 [error]
      220 GETUPVAL                         R9 7
      221 MOVE                             R10 R7
      222 CALL                             R9 1 -1
      223 CALL                             R8 -1 0
      224 GETTABLE                         R3 R2 R1
      225 JUMP                             ; [+152]
      226 DUPTABLE                         R5 K38 [{"color", "name"}]
      227 GETUPVAL                         R6 8
      228 GETUPVAL                         R7 0
      229 GETTABLEKS                       R7 R7 K39 ["runner"]
      231 CALL                             R6 1 1
      232 SETTABLEKS                       R6 R5 K28 ["color"]
      234 SETTABLEKS                       R4 R5 K27 ["name"]
      236 MOVE                             R3 R5
      237 JUMP                             ; [+140]
      238 JUMPIFNOTEQKS                    R1 K40 ["testTimeout"] ; [+21]
      240 GETTABLE                         R4 R2 R1
      241 LOADN                            R5 0
      242 JUMPIFNOTLT                      R4 R5 ; [+15]
      244 GETIMPORT                        R4 K37 [error]
      246 GETUPVAL                         R5 7
      247 LOADK                            R6 K41 ["  Option \"%s\" must be a natural number."]
      248 GETUPVAL                         R8 6
      249 GETTABLEKS                       R8 R8 K30 ["bold"]
      251 LOADK                            R9 K40 ["testTimeout"]
      252 CALL                             R8 1 -1
      253 NAMECALL                         R6 R6 K31 ["format"]
      255 CALL                             R6 -1 -1
      256 CALL                             R5 -1 -1
      257 CALL                             R4 -1 0
      258 GETTABLE                         R3 R2 R1
      259 JUMP                             ; [+118]
      260 JUMPIFEQKS                       R1 K42 ["automock"] ; [+115]
      262 JUMPIFEQKS                       R1 K43 ["cache"] ; [+113]
      264 JUMPIFEQKS                       R1 K44 ["changedSince"] ; [+111]
      266 JUMPIFEQKS                       R1 K45 ["changedFilesWithAncestor"] ; [+109]
      268 JUMPIFEQKS                       R1 K46 ["clearMocks"] ; [+107]
      270 JUMPIFEQKS                       R1 K47 ["collectCoverage"] ; [+105]
      272 JUMPIFEQKS                       R1 K48 ["coverageProvider"] ; [+103]
      274 JUMPIFEQKS                       R1 K49 ["coverageReporters"] ; [+101]
      276 JUMPIFEQKS                       R1 K50 ["coverageThreshold"] ; [+99]
      278 JUMPIFEQKS                       R1 K51 ["detectLeaks"] ; [+97]
      280 JUMPIFEQKS                       R1 K52 ["detectOpenHandles"] ; [+95]
      282 JUMPIFEQKS                       R1 K53 ["errorOnDeprecated"] ; [+93]
      284 JUMPIFEQKS                       R1 K54 ["expand"] ; [+91]
      286 JUMPIFEQKS                       R1 K55 ["extensionsToTreatAsEsm"] ; [+89]
      288 JUMPIFEQKS                       R1 K56 ["extraGlobals"] ; [+87]
      290 JUMPIFEQKS                       R1 K57 ["globals"] ; [+85]
      292 JUMPIFEQKS                       R1 K58 ["findRelatedTests"] ; [+83]
      294 JUMPIFEQKS                       R1 K59 ["forceCoverageMatch"] ; [+81]
      296 JUMPIFEQKS                       R1 K60 ["forceExit"] ; [+79]
      298 JUMPIFEQKS                       R1 K61 ["injectGlobals"] ; [+77]
      300 JUMPIFEQKS                       R1 K62 ["lastCommit"] ; [+75]
      302 JUMPIFEQKS                       R1 K63 ["listTests"] ; [+73]
      304 JUMPIFEQKS                       R1 K64 ["logHeapUsage"] ; [+71]
      306 JUMPIFEQKS                       R1 K65 ["maxConcurrency"] ; [+69]
      308 JUMPIFEQKS                       R1 K66 ["id"] ; [+67]
      310 JUMPIFEQKS                       R1 K67 ["noStackTrace"] ; [+65]
      312 JUMPIFEQKS                       R1 K68 ["notify"] ; [+63]
      314 JUMPIFEQKS                       R1 K69 ["notifyMode"] ; [+61]
      316 JUMPIFEQKS                       R1 K70 ["mockDataModel"] ; [+59]
      318 JUMPIFEQKS                       R1 K71 ["onlyChanged"] ; [+57]
      320 JUMPIFEQKS                       R1 K72 ["onlyFailures"] ; [+55]
      322 JUMPIFEQKS                       R1 K73 ["outputFile"] ; [+53]
      324 JUMPIFEQKS                       R1 K74 ["oldFunctionSpying"] ; [+51]
      326 JUMPIFEQKS                       R1 K75 ["passWithNoTests"] ; [+49]
      328 JUMPIFEQKS                       R1 K76 ["replname"] ; [+47]
      330 JUMPIFEQKS                       R1 K77 ["reporters"] ; [+45]
      332 JUMPIFEQKS                       R1 K78 ["resetMocks"] ; [+43]
      334 JUMPIFEQKS                       R1 K79 ["resetModules"] ; [+41]
      336 JUMPIFEQKS                       R1 K80 ["restoreMocks"] ; [+39]
      338 JUMPIFEQKS                       R1 K81 ["rootDir"] ; [+37]
      340 JUMPIFEQKS                       R1 K82 ["runTestsByPath"] ; [+35]
      342 JUMPIFEQKS                       R1 K83 ["silent"] ; [+33]
      344 JUMPIFEQKS                       R1 K84 ["skipFilter"] ; [+31]
      346 JUMPIFEQKS                       R1 K85 ["skipNodeResolution"] ; [+29]
      348 JUMPIFEQKS                       R1 K86 ["slowTestThreshold"] ; [+27]
      350 JUMPIFEQKS                       R1 K87 ["snapshotFormat"] ; [+25]
      352 JUMPIFEQKS                       R1 K88 ["testEnvironment"] ; [+23]
      354 JUMPIFEQKS                       R1 K89 ["testEnvironmentOptions"] ; [+21]
      356 JUMPIFEQKS                       R1 K90 ["testFailureExitCode"] ; [+19]
      358 JUMPIFEQKS                       R1 K91 ["testLocationInResults"] ; [+17]
      360 JUMPIFEQKS                       R1 K92 ["testNamePattern"] ; [+15]
      362 JUMPIFEQKS                       R1 K93 ["testURL"] ; [+13]
      364 JUMPIFEQKS                       R1 K94 ["timers"] ; [+11]
      366 JUMPIFEQKS                       R1 K95 ["useStderr"] ; [+9]
      368 JUMPIFEQKS                       R1 K96 ["verbose"] ; [+7]
      370 JUMPIFEQKS                       R1 K97 ["watch"] ; [+5]
      372 JUMPIFEQKS                       R1 K98 ["watchAll"] ; [+3]
      374 JUMPIFNOTEQKS                    R1 K99 ["watchman"] ; [+3]
      376 GETTABLE                         R3 R2 R1
      377 JUMP                             ; [0]
      378 SETTABLE                         R3 R0 R1
      379 RETURN                           R0 1

PROTO_18:
        0 LOADK                            R2 K0 ["roots[%s]"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 2 1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K5 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K6 ["Instance"] ; [+24]
       16 GETIMPORT                        R3 K8 [error]
       18 GETUPVAL                         R4 0
       19 LOADK                            R5 K9 ["  Directory %s in the %s option was not found."]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K10 ["bold"]
       23 FASTCALL1                        TOSTRING R0 ; [+3]
       24 MOVE                             R9 R0
       25 GETIMPORT                        R8 K2 [tostring]
       27 CALL                             R8 1 1
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K10 ["bold"]
       32 MOVE                             R9 R2
       33 CALL                             R8 1 -1
       34 NAMECALL                         R5 R5 K3 ["format"]
       36 CALL                             R5 -1 -1
       37 CALL                             R4 -1 -1
       38 CALL                             R3 -1 0
       39 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R2 2 -1
        6 CALL                             R1 -1 1
        7 GETUPVAL                         R2 5
        8 GETUPVAL                         R3 6
        9 GETUPVAL                         R4 7
       10 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
       12 GETTABLEKS                       R5 R1 K1 ["id"]
       14 CALL                             R4 1 1
       15 JUMPIF                           R4 ; [+7]
       16 GETUPVAL                         R4 8
       17 GETTABLEKS                       R5 R1 K2 ["rootDir"]
       19 LOADNIL                          R6
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R1 K1 ["id"]
       23 GETTABLEKS                       R4 R1 K3 ["setupFiles"]
       25 JUMPIFNOTEQKNIL                  R4 ; [+5]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R1 K3 ["setupFiles"]
       31 CALL                             R0 1 1
       32 GETTABLEKS                       R1 R0 K4 ["testEnvironment"]
       34 JUMPIF                           R1 ; [+3]
       35 GETUPVAL                         R1 9
       36 GETTABLEKS                       R1 R1 K4 ["testEnvironment"]
       38 SETTABLEKS                       R1 R0 K4 ["testEnvironment"]
       40 GETTABLEKS                       R1 R0 K5 ["roots"]
       42 JUMPIFNOTEQKNIL                  R1 ; [+12]
       44 GETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       46 JUMPIFEQKNIL                     R1 ; [+8]
       48 GETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       50 SETTABLEKS                       R1 R0 K5 ["roots"]
       52 LOADNIL                          R1
       53 SETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       55 GETTABLEKS                       R1 R0 K5 ["roots"]
       57 JUMPIFNOTEQKNIL                  R1 ; [+9]
       59 NEWTABLE                         R1 0 1
       61 GETTABLEKS                       R2 R0 K2 ["rootDir"]
       63 SETLIST                          R1 R2 1 [1]
       65 SETTABLEKS                       R1 R0 K5 ["roots"]
       67 GETUPVAL                         R1 10
       68 GETTABLEKS                       R1 R1 K7 ["assign"]
       70 NEWTABLE                         R2 0 0
       72 GETUPVAL                         R3 9
       73 CALL                             R1 2 1
       74 GETUPVAL                         R2 10
       75 GETTABLEKS                       R2 R2 K8 ["keys"]
       77 MOVE                             R3 R0
       78 CALL                             R2 1 1
       79 GETUPVAL                         R3 11
       80 GETTABLEKS                       R3 R3 K9 ["reduce"]
       82 MOVE                             R4 R2
       83 NEWCLOSURE                       R5 P0
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U11
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          UPVAL U12
       88 CAPTURE                          UPVAL U13
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U14
       91 CAPTURE                          UPVAL U15
       92 CAPTURE                          UPVAL U16
       93 MOVE                             R6 R1
       94 CALL                             R3 3 0
       95 GETUPVAL                         R3 11
       96 GETTABLEKS                       R3 R3 K10 ["forEach"]
       98 GETTABLEKS                       R4 R1 K5 ["roots"]
      100 DUPCLOSURE                       R5 K11 [PROTO_18]
      101 CAPTURE                          UPVAL U15
      102 CAPTURE                          UPVAL U14
      103 CALL                             R3 2 0
      104 GETUPVAL                         R3 17
      105 GETUPVAL                         R4 4
      106 CALL                             R3 1 1
      107 SETTABLEKS                       R3 R1 K12 ["testPathPattern"]
      109 GETUPVAL                         R3 7
      110 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
      112 GETUPVAL                         R4 4
      113 GETTABLEKS                       R4 R4 K13 ["json"]
      115 CALL                             R3 1 1
      116 SETTABLEKS                       R3 R1 K13 ["json"]
      118 GETTABLEKS                       R5 R1 K15 ["testFailureExitCode"]
      120 FASTCALL2K                       TONUMBER R5 K16 ; [+4]
      122 LOADK                            R6 K16 [10]
      123 GETIMPORT                        R4 K18 [tonumber]
      125 CALL                             R4 2 1
      126 ORK                              R3 R4 K14 [0]
      127 SETTABLEKS                       R3 R1 K15 ["testFailureExitCode"]
      129 GETUPVAL                         R4 7
      130 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
      132 GETUPVAL                         R5 4
      133 GETTABLEKS                       R5 R5 K19 ["ci"]
      135 CALL                             R4 1 1
      136 JUMPIFNOT                        R4 ; [+6]
      137 GETUPVAL                         R4 4
      138 GETTABLEKS                       R4 R4 K20 ["updateSnapshot"]
      140 JUMPIF                           R4 ; [+2]
      141 LOADK                            R3 K21 ["none"]
      142 JUMP                             ; [+7]
      143 GETUPVAL                         R4 4
      144 GETTABLEKS                       R4 R4 K20 ["updateSnapshot"]
      146 JUMPIFNOT                        R4 ; [+2]
      147 LOADK                            R3 K22 ["all"]
      148 JUMP                             ; [+1]
      149 LOADK                            R3 K23 ["new"]
      150 SETTABLEKS                       R3 R1 K20 ["updateSnapshot"]
      152 GETTABLEKS                       R5 R1 K24 ["maxConcurrency"]
      154 FASTCALL2K                       TONUMBER R5 K16 ; [+4]
      156 LOADK                            R6 K16 [10]
      157 GETIMPORT                        R4 K18 [tonumber]
      159 CALL                             R4 2 1
      160 ORK                              R3 R4 K14 [0]
      161 SETTABLEKS                       R3 R1 K24 ["maxConcurrency"]
      163 GETUPVAL                         R3 18
      164 GETUPVAL                         R4 4
      165 MOVE                             R5 R0
      166 CALL                             R3 2 1
      167 SETTABLEKS                       R3 R1 K25 ["maxWorkers"]
      169 GETTABLEKS                       R4 R1 K26 ["testRegex"]
      171 LENGTH                           R3 R4
      172 LOADN                            R4 0
      173 JUMPIFNOTLT                      R4 R3 ; [+29]
      175 GETTABLEKS                       R3 R0 K27 ["testMatch"]
      177 JUMPIFEQKNIL                     R3 ; [+25]
      179 GETIMPORT                        R3 K29 [error]
      181 GETUPVAL                         R4 15
      182 LOADK                            R6 K30 ["  Configuration options %s and"]
      183 GETUPVAL                         R8 14
      184 GETTABLEKS                       R8 R8 K31 ["bold"]
      186 LOADK                            R9 K27 ["testMatch"]
      187 CALL                             R8 1 -1
      188 NAMECALL                         R6 R6 K32 ["format"]
      190 CALL                             R6 -1 1
      191 LOADK                            R7 K33 [" %s cannot be used together."]
      192 GETUPVAL                         R9 14
      193 GETTABLEKS                       R9 R9 K31 ["bold"]
      195 LOADK                            R10 K26 ["testRegex"]
      196 CALL                             R9 1 -1
      197 NAMECALL                         R7 R7 K32 ["format"]
      199 CALL                             R7 -1 1
      200 CONCAT                           R5 R6 R7
      201 CALL                             R4 1 -1
      202 CALL                             R3 -1 0
      203 GETTABLEKS                       R4 R1 K26 ["testRegex"]
      205 LENGTH                           R3 R4
      206 LOADN                            R4 0
      207 JUMPIFNOTLT                      R4 R3 ; [+9]
      209 GETTABLEKS                       R3 R0 K27 ["testMatch"]
      211 JUMPIFNOTEQKNIL                  R3 ; [+5]
      213 NEWTABLE                         R3 0 0
      215 SETTABLEKS                       R3 R1 K27 ["testMatch"]
      217 GETUPVAL                         R3 7
      218 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
      220 GETTABLEKS                       R4 R1 K34 ["projects"]
      222 CALL                             R3 1 1
      223 JUMPIF                           R3 ; [+4]
      224 NEWTABLE                         R3 0 0
      226 SETTABLEKS                       R3 R1 K34 ["projects"]
      228 DUPTABLE                         R3 K38 [{["hasDeprecationWarnings"] = False, ["options"]}]
      229 SETTABLEKS                       R1 R3 K37 ["options"]
      231 RETURN                           R3 1

PROTO_20:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 MOVE                             R4 R3
        3 JUMP                             ; [+1]
        4 LOADK                            R4 K0 [Infinity]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["resolve"]
        8 CALL                             R5 0 1
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U10
       24 CAPTURE                          UPVAL U11
       25 CAPTURE                          UPVAL U12
       26 CAPTURE                          UPVAL U13
       27 CAPTURE                          UPVAL U14
       28 CAPTURE                          UPVAL U15
       29 NAMECALL                         R5 R5 K2 ["andThen"]
       31 CALL                             R5 2 -1
       32 RETURN                           R5 -1

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
       18 GETTABLEKS                       R5 R1 K9 ["console"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K10 ["Promise"]
       24 CALL                             R6 1 1
       25 NEWTABLE                         R7 1 0
       27 LOADNIL                          R8
       28 GETIMPORT                        R9 K4 [require]
       30 GETTABLEKS                       R10 R0 K11 ["RobloxShared"]
       32 CALL                             R9 1 1
       33 GETTABLEKS                       R10 R9 K12 ["nodeUtils"]
       35 GETTABLEKS                       R11 R10 K13 ["process"]
       37 GETTABLEKS                       R12 R9 K14 ["getRelativePath"]
       39 GETIMPORT                        R13 K4 [require]
       41 GETTABLEKS                       R14 R0 K15 ["ChalkLua"]
       43 CALL                             R13 1 1
       44 GETIMPORT                        R14 K4 [require]
       46 GETTABLEKS                       R15 R0 K16 ["JestTypes"]
       48 CALL                             R14 1 1
       49 DUPCLOSURE                       R15 K17 [PROTO_0]
       50 GETIMPORT                        R16 K4 [require]
       52 GETTABLEKS                       R17 R0 K18 ["JestUtil"]
       54 CALL                             R16 1 1
       55 GETTABLEKS                       R17 R16 K19 ["clearLine"]
       57 DUPCLOSURE                       R18 K20 [PROTO_1]
       58 GETIMPORT                        R19 K4 [require]
       60 GETTABLEKS                       R20 R0 K21 ["JestValidate"]
       62 CALL                             R19 1 1
       63 GETTABLEKS                       R20 R19 K22 ["ValidationError"]
       65 GETIMPORT                        R21 K4 [require]
       67 GETIMPORT                        R22 K1 [script]
       69 GETTABLEKS                       R22 R22 K2 ["Parent"]
       71 GETTABLEKS                       R22 R22 K23 ["Defaults"]
       73 CALL                             R21 1 1
       74 GETTABLEKS                       R21 R21 K24 ["default"]
       76 GETIMPORT                        R22 K4 [require]
       78 GETIMPORT                        R23 K1 [script]
       80 GETTABLEKS                       R23 R23 K2 ["Parent"]
       82 GETTABLEKS                       R23 R23 K25 ["ReporterValidationErrors"]
       84 CALL                             R22 1 1
       85 GETTABLEKS                       R22 R22 K26 ["validateReporters"]
       87 GETIMPORT                        R23 K4 [require]
       89 GETIMPORT                        R24 K1 [script]
       91 GETTABLEKS                       R24 R24 K2 ["Parent"]
       93 GETTABLEKS                       R24 R24 K27 ["color"]
       95 CALL                             R23 1 1
       96 GETTABLEKS                       R23 R23 K28 ["getDisplayNameColor"]
       98 GETIMPORT                        R24 K4 [require]
      100 GETIMPORT                        R25 K1 [script]
      102 GETTABLEKS                       R25 R25 K2 ["Parent"]
      104 GETTABLEKS                       R25 R25 K29 ["getMaxWorkers"]
      106 CALL                             R24 1 1
      107 GETTABLEKS                       R24 R24 K24 ["default"]
      109 GETIMPORT                        R25 K4 [require]
      111 GETIMPORT                        R26 K1 [script]
      113 GETTABLEKS                       R26 R26 K2 ["Parent"]
      115 GETTABLEKS                       R26 R26 K30 ["setFromArgv"]
      117 CALL                             R25 1 1
      118 GETTABLEKS                       R25 R25 K24 ["default"]
      120 GETIMPORT                        R26 K4 [require]
      122 GETIMPORT                        R27 K1 [script]
      124 GETTABLEKS                       R27 R27 K2 ["Parent"]
      126 GETTABLEKS                       R27 R27 K31 ["utils"]
      128 CALL                             R26 1 1
      129 GETTABLEKS                       R27 R26 K32 ["BULLET"]
      131 GETTABLEKS                       R28 R26 K33 ["DOCUMENTATION_NOTE"]
      133 GETIMPORT                        R29 K4 [require]
      135 GETIMPORT                        R30 K1 [script]
      137 GETTABLEKS                       R30 R30 K2 ["Parent"]
      139 GETTABLEKS                       R30 R30 K34 ["validatePattern"]
      141 CALL                             R29 1 1
      142 GETTABLEKS                       R29 R29 K24 ["default"]
      144 LOADK                            R30 K35 ["%sValidation Error"]
      145 MOVE                             R32 R27
      146 NAMECALL                         R30 R30 K36 ["format"]
      148 CALL                             R30 2 1
      149 NEWTABLE                         R31 4 0
      151 LOADB                            R32 1
      152 SETTABLEKS                       R32 R31 K24 ["default"]
      154 LOADB                            R32 1
      155 SETTABLEKS                       R32 R31 K37 ["summary"]
      157 LOADB                            R32 1
      158 SETTABLEKS                       R32 R31 K38 ["github-actions"]
      160 DUPCLOSURE                       R32 K39 [PROTO_2]
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R30
      163 CAPTURE                          VAL R28
      164 DUPCLOSURE                       R33 K40 [PROTO_3]
      165 CAPTURE                          VAL R32
      166 CAPTURE                          VAL R13
      167 DUPCLOSURE                       R34 K41 [PROTO_4]
      168 DUPCLOSURE                       R35 K42 [PROTO_5]
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R12
      171 DUPCLOSURE                       R36 K43 [PROTO_6]
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R32
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R4
      176 DUPCLOSURE                       R37 K44 [PROTO_9]
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R31
      180 NEWCLOSURE                       R38 P8
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R29
      183 CAPTURE                          REF R8
      184 DUPCLOSURE                       R8 K45 [PROTO_12]
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R13
      189 DUPCLOSURE                       R39 K46 [PROTO_20]
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R37
      192 CAPTURE                          VAL R36
      193 CAPTURE                          VAL R25
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R32
      203 CAPTURE                          VAL R23
      204 CAPTURE                          VAL R38
      205 CAPTURE                          VAL R24
      206 SETTABLEKS                       R39 R7 K24 ["default"]
      208 CLOSEUPVALS                      R8
      209 RETURN                           R7 1
