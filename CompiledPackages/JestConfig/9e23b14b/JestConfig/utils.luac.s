PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+22]
        3 LOADB                            R1 0
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+14]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["startsWith"]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K4 ["{"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K5 ["endsWith"]
       21 MOVE                             R2 R0
       22 LOADK                            R3 K6 ["}"]
       23 CALL                             R1 2 1
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["String"]
       14 NEWTABLE                         R3 4 0
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["ChalkLua"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K8 ["JestTypes"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R4 K9 ["bold"]
       28 LOADK                            R7 K10 ["● "]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R3 K11 ["BULLET"]
       32 LOADK                            R7 K12 ["  %s\n  https://roblox.github.io/jest-roblox/configuration\n"]
       33 GETTABLEKS                       R9 R4 K9 ["bold"]
       35 LOADK                            R10 K13 ["Configuration Documentation:"]
       36 CALL                             R9 1 -1
       37 NAMECALL                         R7 R7 K14 ["format"]
       39 CALL                             R7 -1 1
       40 SETTABLEKS                       R7 R3 K15 ["DOCUMENTATION_NOTE"]
       42 DUPCLOSURE                       R8 K16 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R8 R3 K17 ["isJSONString"]
       46 RETURN                           R3 1
