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
       20 JUMPIF                           R3 ; [+21]
       21 GETIMPORT                        R3 K7 [pcall]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R2
       25 CALL                             R3 1 2
       26 JUMPIFNOT                        R3 ; [+1]
       27 JUMPIF                           R4 ; [+14]
       28 GETIMPORT                        R5 K9 [error]
       30 LOADK                            R7 K10 ["Could not resolve a module for a custom reporter.\n"]
       31 LOADK                            R8 K11 ["  Module name: %s\n"]
       32 FASTCALL1                        TOSTRING R2 ; [+3]
       33 MOVE                             R11 R2
       34 GETIMPORT                        R10 K13 [tostring]
       36 CALL                             R10 1 1
       37 NAMECALL                         R8 R8 K14 ["format"]
       39 CALL                             R8 2 1
       40 CONCAT                           R6 R7 R8
       41 CALL                             R5 1 0
       42 RETURN                           R1 1

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
       11 LOADK                            R6 K3 ["  Invalid testPattern %s supplied. "]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R9 R0
       14 GETIMPORT                        R8 K5 [tostring]
       16 CALL                             R8 1 1
       17 NAMECALL                         R6 R6 K6 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R4 R6
       21 LOADK                            R5 K7 ["Running all tests instead."]
       22 CONCAT                           R3 R4 R5
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

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
       12 JUMPIFEQKNIL                     R4 ; [+366]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["map"]
       17 MOVE                             R6 R4
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U0
       20 CALL                             R5 2 1
       21 MOVE                             R3 R5
       22 JUMP                             ; [+356]
       23 JUMPIFEQKS                       R1 K5 ["modulePaths"] ; [+3]
       25 JUMPIFNOTEQKS                    R1 K6 ["roots"] ; [+13]
       27 GETTABLE                         R4 R2 R1
       28 JUMPIFEQKNIL                     R4 ; [+350]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K4 ["map"]
       33 MOVE                             R6 R4
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U0
       36 CALL                             R5 2 1
       37 MOVE                             R3 R5
       38 JUMP                             ; [+340]
       39 JUMPIFNOTEQKS                    R1 K7 ["testPathIgnorePatterns"] ; [+3]
       41 GETTABLE                         R3 R2 R1
       42 JUMP                             ; [+336]
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
       69 JUMP                             ; [+309]
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
       90 JUMP                             ; [+288]
       91 MOVE                             R3 R4
       92 JUMP                             ; [+286]
       93 MOVE                             R3 R4
       94 JUMP                             ; [+284]
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
      125 JUMP                             ; [+253]
      126 NEWTABLE                         R3 0 0
      128 JUMP                             ; [+250]
      129 JUMPIFNOTEQKS                    R1 K17 ["bail"] ; [+34]
      131 GETTABLE                         R4 R2 R1
      132 FASTCALL1                        TYPEOF R4 ; [+3]
      133 MOVE                             R6 R4
      134 GETIMPORT                        R5 K19 [typeof]
      136 CALL                             R5 1 1
      137 JUMPIFNOTEQKS                    R5 K20 ["boolean"] ; [+6]
      139 JUMPIFNOT                        R4 ; [+2]
      140 LOADN                            R3 1
      141 JUMP                             ; [+237]
      142 LOADN                            R3 0
      143 JUMP                             ; [+235]
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
      161 JUMP                             ; [+217]
      162 GETTABLE                         R3 R2 R1
      163 JUMP                             ; [+215]
      164 JUMPIFNOTEQKS                    R1 K26 ["displayName"] ; [+74]
      166 GETTABLE                         R4 R2 R1
      167 FASTCALL1                        TYPEOF R4 ; [+3]
      168 MOVE                             R6 R4
      169 GETIMPORT                        R5 K19 [typeof]
      171 CALL                             R5 1 1
      172 JUMPIFNOTEQKS                    R5 K23 ["table"] ; [+54]
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
      202 JUMPIFEQKS                       R7 K21 ["string"] ; [+22]
      204 LOADK                            R13 K29 ["  Option \"%s\" must be of type:\n\n"]
      205 GETUPVAL                         R15 6
      206 GETTABLEKS                       R15 R15 K30 ["bold"]
      208 LOADK                            R16 K26 ["displayName"]
      209 CALL                             R15 1 -1
      210 NAMECALL                         R13 R13 K31 ["format"]
      212 CALL                             R13 -1 1
      213 MOVE                             R8 R13
      214 LOADK                            R9 K32 ["  {\n"]
      215 LOADK                            R10 K33 ["    name: string;\n"]
      216 LOADK                            R11 K34 ["    color: string;\n"]
      217 LOADK                            R12 K35 ["  }\n"]
      218 CONCAT                           R7 R8 R12
      219 GETIMPORT                        R8 K37 [error]
      221 GETUPVAL                         R9 7
      222 MOVE                             R10 R7
      223 CALL                             R9 1 -1
      224 CALL                             R8 -1 0
      225 GETTABLE                         R3 R2 R1
      226 JUMP                             ; [+152]
      227 DUPTABLE                         R5 K38 [{"color", "name"}]
      228 GETUPVAL                         R6 8
      229 GETUPVAL                         R7 0
      230 GETTABLEKS                       R7 R7 K39 ["runner"]
      232 CALL                             R6 1 1
      233 SETTABLEKS                       R6 R5 K28 ["color"]
      235 SETTABLEKS                       R4 R5 K27 ["name"]
      237 MOVE                             R3 R5
      238 JUMP                             ; [+140]
      239 JUMPIFNOTEQKS                    R1 K40 ["testTimeout"] ; [+21]
      241 GETTABLE                         R4 R2 R1
      242 LOADN                            R5 0
      243 JUMPIFNOTLT                      R4 R5 ; [+15]
      245 GETIMPORT                        R4 K37 [error]
      247 GETUPVAL                         R5 7
      248 LOADK                            R6 K41 ["  Option \"%s\" must be a natural number."]
      249 GETUPVAL                         R8 6
      250 GETTABLEKS                       R8 R8 K30 ["bold"]
      252 LOADK                            R9 K40 ["testTimeout"]
      253 CALL                             R8 1 -1
      254 NAMECALL                         R6 R6 K31 ["format"]
      256 CALL                             R6 -1 -1
      257 CALL                             R5 -1 -1
      258 CALL                             R4 -1 0
      259 GETTABLE                         R3 R2 R1
      260 JUMP                             ; [+118]
      261 JUMPIFEQKS                       R1 K42 ["automock"] ; [+115]
      263 JUMPIFEQKS                       R1 K43 ["cache"] ; [+113]
      265 JUMPIFEQKS                       R1 K44 ["changedSince"] ; [+111]
      267 JUMPIFEQKS                       R1 K45 ["changedFilesWithAncestor"] ; [+109]
      269 JUMPIFEQKS                       R1 K46 ["clearMocks"] ; [+107]
      271 JUMPIFEQKS                       R1 K47 ["collectCoverage"] ; [+105]
      273 JUMPIFEQKS                       R1 K48 ["coverageProvider"] ; [+103]
      275 JUMPIFEQKS                       R1 K49 ["coverageReporters"] ; [+101]
      277 JUMPIFEQKS                       R1 K50 ["coverageThreshold"] ; [+99]
      279 JUMPIFEQKS                       R1 K51 ["detectLeaks"] ; [+97]
      281 JUMPIFEQKS                       R1 K52 ["detectOpenHandles"] ; [+95]
      283 JUMPIFEQKS                       R1 K53 ["errorOnDeprecated"] ; [+93]
      285 JUMPIFEQKS                       R1 K54 ["expand"] ; [+91]
      287 JUMPIFEQKS                       R1 K55 ["extensionsToTreatAsEsm"] ; [+89]
      289 JUMPIFEQKS                       R1 K56 ["extraGlobals"] ; [+87]
      291 JUMPIFEQKS                       R1 K57 ["globals"] ; [+85]
      293 JUMPIFEQKS                       R1 K58 ["findRelatedTests"] ; [+83]
      295 JUMPIFEQKS                       R1 K59 ["forceCoverageMatch"] ; [+81]
      297 JUMPIFEQKS                       R1 K60 ["forceExit"] ; [+79]
      299 JUMPIFEQKS                       R1 K61 ["injectGlobals"] ; [+77]
      301 JUMPIFEQKS                       R1 K62 ["lastCommit"] ; [+75]
      303 JUMPIFEQKS                       R1 K63 ["listTests"] ; [+73]
      305 JUMPIFEQKS                       R1 K64 ["logHeapUsage"] ; [+71]
      307 JUMPIFEQKS                       R1 K65 ["maxConcurrency"] ; [+69]
      309 JUMPIFEQKS                       R1 K66 ["id"] ; [+67]
      311 JUMPIFEQKS                       R1 K67 ["noStackTrace"] ; [+65]
      313 JUMPIFEQKS                       R1 K68 ["notify"] ; [+63]
      315 JUMPIFEQKS                       R1 K69 ["notifyMode"] ; [+61]
      317 JUMPIFEQKS                       R1 K70 ["mockDataModel"] ; [+59]
      319 JUMPIFEQKS                       R1 K71 ["onlyChanged"] ; [+57]
      321 JUMPIFEQKS                       R1 K72 ["onlyFailures"] ; [+55]
      323 JUMPIFEQKS                       R1 K73 ["outputFile"] ; [+53]
      325 JUMPIFEQKS                       R1 K74 ["oldFunctionSpying"] ; [+51]
      327 JUMPIFEQKS                       R1 K75 ["passWithNoTests"] ; [+49]
      329 JUMPIFEQKS                       R1 K76 ["replname"] ; [+47]
      331 JUMPIFEQKS                       R1 K77 ["reporters"] ; [+45]
      333 JUMPIFEQKS                       R1 K78 ["resetMocks"] ; [+43]
      335 JUMPIFEQKS                       R1 K79 ["resetModules"] ; [+41]
      337 JUMPIFEQKS                       R1 K80 ["restoreMocks"] ; [+39]
      339 JUMPIFEQKS                       R1 K81 ["rootDir"] ; [+37]
      341 JUMPIFEQKS                       R1 K82 ["runTestsByPath"] ; [+35]
      343 JUMPIFEQKS                       R1 K83 ["silent"] ; [+33]
      345 JUMPIFEQKS                       R1 K84 ["skipFilter"] ; [+31]
      347 JUMPIFEQKS                       R1 K85 ["skipNodeResolution"] ; [+29]
      349 JUMPIFEQKS                       R1 K86 ["slowTestThreshold"] ; [+27]
      351 JUMPIFEQKS                       R1 K87 ["snapshotFormat"] ; [+25]
      353 JUMPIFEQKS                       R1 K88 ["testEnvironment"] ; [+23]
      355 JUMPIFEQKS                       R1 K89 ["testEnvironmentOptions"] ; [+21]
      357 JUMPIFEQKS                       R1 K90 ["testFailureExitCode"] ; [+19]
      359 JUMPIFEQKS                       R1 K91 ["testLocationInResults"] ; [+17]
      361 JUMPIFEQKS                       R1 K92 ["testNamePattern"] ; [+15]
      363 JUMPIFEQKS                       R1 K93 ["testURL"] ; [+13]
      365 JUMPIFEQKS                       R1 K94 ["timers"] ; [+11]
      367 JUMPIFEQKS                       R1 K95 ["useStderr"] ; [+9]
      369 JUMPIFEQKS                       R1 K96 ["verbose"] ; [+7]
      371 JUMPIFEQKS                       R1 K97 ["watch"] ; [+5]
      373 JUMPIFEQKS                       R1 K98 ["watchAll"] ; [+3]
      375 JUMPIFNOTEQKS                    R1 K99 ["watchman"] ; [+3]
      377 GETTABLE                         R3 R2 R1
      378 JUMP                             ; [0]
      379 SETTABLE                         R3 R0 R1
      380 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 CALL                             R4 2 -1
        6 CALL                             R3 -1 1
        7 GETUPVAL                         R4 5
        8 GETUPVAL                         R5 6
        9 GETUPVAL                         R6 7
       10 GETTABLEKS                       R6 R6 K0 ["toJSBoolean"]
       12 GETTABLEKS                       R7 R3 K1 ["id"]
       14 CALL                             R6 1 1
       15 JUMPIF                           R6 ; [+7]
       16 GETUPVAL                         R6 8
       17 GETTABLEKS                       R7 R3 K2 ["rootDir"]
       19 LOADNIL                          R8
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R3 K1 ["id"]
       23 GETTABLEKS                       R6 R3 K3 ["setupFiles"]
       25 JUMPIFNOTEQKNIL                  R6 ; [+5]
       27 NEWTABLE                         R6 0 0
       29 SETTABLEKS                       R6 R3 K3 ["setupFiles"]
       31 MOVE                             R2 R3
       32 CALL                             R1 1 1
       33 MOVE                             R0 R1
       34 GETTABLEKS                       R1 R0 K4 ["testEnvironment"]
       36 JUMPIF                           R1 ; [+3]
       37 GETUPVAL                         R1 9
       38 GETTABLEKS                       R1 R1 K4 ["testEnvironment"]
       40 SETTABLEKS                       R1 R0 K4 ["testEnvironment"]
       42 GETTABLEKS                       R1 R0 K5 ["roots"]
       44 JUMPIFNOTEQKNIL                  R1 ; [+12]
       46 GETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       48 JUMPIFEQKNIL                     R1 ; [+8]
       50 GETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       52 SETTABLEKS                       R1 R0 K5 ["roots"]
       54 LOADNIL                          R1
       55 SETTABLEKS                       R1 R0 K6 ["testPathDirs"]
       57 GETTABLEKS                       R1 R0 K5 ["roots"]
       59 JUMPIFNOTEQKNIL                  R1 ; [+9]
       61 NEWTABLE                         R1 0 1
       63 GETTABLEKS                       R2 R0 K2 ["rootDir"]
       65 SETLIST                          R1 R2 1 [1]
       67 SETTABLEKS                       R1 R0 K5 ["roots"]
       69 GETUPVAL                         R1 10
       70 GETTABLEKS                       R1 R1 K7 ["assign"]
       72 NEWTABLE                         R2 0 0
       74 GETUPVAL                         R3 9
       75 CALL                             R1 2 1
       76 GETUPVAL                         R2 10
       77 GETTABLEKS                       R2 R2 K8 ["keys"]
       79 MOVE                             R3 R0
       80 CALL                             R2 1 1
       81 GETUPVAL                         R3 11
       82 GETTABLEKS                       R3 R3 K9 ["reduce"]
       84 MOVE                             R4 R2
       85 NEWCLOSURE                       R5 P0
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U11
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          UPVAL U12
       90 CAPTURE                          UPVAL U13
       91 CAPTURE                          UPVAL U4
       92 CAPTURE                          UPVAL U14
       93 CAPTURE                          UPVAL U15
       94 CAPTURE                          UPVAL U16
       95 MOVE                             R6 R1
       96 CALL                             R3 3 0
       97 GETUPVAL                         R3 11
       98 GETTABLEKS                       R3 R3 K10 ["forEach"]
      100 GETTABLEKS                       R4 R1 K5 ["roots"]
      102 DUPCLOSURE                       R5 K11 [PROTO_18]
      103 CAPTURE                          UPVAL U15
      104 CAPTURE                          UPVAL U14
      105 CALL                             R3 2 0
      106 GETUPVAL                         R3 17
      107 GETUPVAL                         R4 4
      108 CALL                             R3 1 1
      109 SETTABLEKS                       R3 R1 K12 ["testPathPattern"]
      111 GETUPVAL                         R3 7
      112 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
      114 GETUPVAL                         R4 4
      115 GETTABLEKS                       R4 R4 K13 ["json"]
      117 CALL                             R3 1 1
      118 SETTABLEKS                       R3 R1 K13 ["json"]
      120 GETTABLEKS                       R5 R1 K15 ["testFailureExitCode"]
      122 FASTCALL2K                       TONUMBER R5 K16 ; [+4]
      124 LOADK                            R6 K16 [10]
      125 GETIMPORT                        R4 K18 [tonumber]
      127 CALL                             R4 2 1
      128 ORK                              R3 R4 K14 [0]
      129 SETTABLEKS                       R3 R1 K15 ["testFailureExitCode"]
      131 GETUPVAL                         R4 7
      132 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
      134 GETUPVAL                         R5 4
      135 GETTABLEKS                       R5 R5 K19 ["ci"]
      137 CALL                             R4 1 1
      138 JUMPIFNOT                        R4 ; [+6]
      139 GETUPVAL                         R4 4
      140 GETTABLEKS                       R4 R4 K20 ["updateSnapshot"]
      142 JUMPIF                           R4 ; [+2]
      143 LOADK                            R3 K21 ["none"]
      144 JUMP                             ; [+7]
      145 GETUPVAL                         R4 4
      146 GETTABLEKS                       R4 R4 K20 ["updateSnapshot"]
      148 JUMPIFNOT                        R4 ; [+2]
      149 LOADK                            R3 K22 ["all"]
      150 JUMP                             ; [+1]
      151 LOADK                            R3 K23 ["new"]
      152 SETTABLEKS                       R3 R1 K20 ["updateSnapshot"]
      154 GETTABLEKS                       R5 R1 K24 ["maxConcurrency"]
      156 FASTCALL2K                       TONUMBER R5 K16 ; [+4]
      158 LOADK                            R6 K16 [10]
      159 GETIMPORT                        R4 K18 [tonumber]
      161 CALL                             R4 2 1
      162 ORK                              R3 R4 K14 [0]
      163 SETTABLEKS                       R3 R1 K24 ["maxConcurrency"]
      165 GETUPVAL                         R3 18
      166 GETUPVAL                         R4 4
      167 MOVE                             R5 R0
      168 CALL                             R3 2 1
      169 SETTABLEKS                       R3 R1 K25 ["maxWorkers"]
      171 GETTABLEKS                       R4 R1 K26 ["testRegex"]
      173 LENGTH                           R3 R4
      174 LOADN                            R4 0
      175 JUMPIFNOTLT                      R4 R3 ; [+30]
      177 GETTABLEKS                       R3 R0 K27 ["testMatch"]
      179 JUMPIFEQKNIL                     R3 ; [+26]
      181 GETIMPORT                        R3 K29 [error]
      183 GETUPVAL                         R4 15
      184 LOADK                            R8 K30 ["  Configuration options %s and"]
      185 GETUPVAL                         R10 14
      186 GETTABLEKS                       R10 R10 K31 ["bold"]
      188 LOADK                            R11 K27 ["testMatch"]
      189 CALL                             R10 1 -1
      190 NAMECALL                         R8 R8 K32 ["format"]
      192 CALL                             R8 -1 1
      193 MOVE                             R6 R8
      194 LOADK                            R7 K33 [" %s cannot be used together."]
      195 GETUPVAL                         R9 14
      196 GETTABLEKS                       R9 R9 K31 ["bold"]
      198 LOADK                            R10 K26 ["testRegex"]
      199 CALL                             R9 1 -1
      200 NAMECALL                         R7 R7 K32 ["format"]
      202 CALL                             R7 -1 1
      203 CONCAT                           R5 R6 R7
      204 CALL                             R4 1 -1
      205 CALL                             R3 -1 0
      206 GETTABLEKS                       R4 R1 K26 ["testRegex"]
      208 LENGTH                           R3 R4
      209 LOADN                            R4 0
      210 JUMPIFNOTLT                      R4 R3 ; [+9]
      212 GETTABLEKS                       R3 R0 K27 ["testMatch"]
      214 JUMPIFNOTEQKNIL                  R3 ; [+5]
      216 NEWTABLE                         R3 0 0
      218 SETTABLEKS                       R3 R1 K27 ["testMatch"]
      220 GETUPVAL                         R3 7
      221 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
      223 GETTABLEKS                       R4 R1 K34 ["projects"]
      225 CALL                             R3 1 1
      226 JUMPIF                           R3 ; [+4]
      227 NEWTABLE                         R3 0 0
      229 SETTABLEKS                       R3 R1 K34 ["projects"]
      231 DUPTABLE                         R3 K37 [{"hasDeprecationWarnings", "options"}]
      232 LOADB                            R4 0
      233 SETTABLEKS                       R4 R3 K35 ["hasDeprecationWarnings"]
      235 SETTABLEKS                       R1 R3 K36 ["options"]
      237 RETURN                           R3 1

PROTO_20:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 MOVE                             R4 R3
        3 JUMP                             ; [+1]
        4 LOADK                            R4 K0 [∞]
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
