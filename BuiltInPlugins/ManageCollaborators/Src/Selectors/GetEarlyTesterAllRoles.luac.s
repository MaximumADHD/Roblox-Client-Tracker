PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["EarlyTesters"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K1 ["AllRoles"]
        9 LOADN                            R3 1
       10 LENGTH                           R4 R2
       11 LOADN                            R5 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["fflagReverseGroupRoleOrder"]
       15 JUMPIFNOT                        R6 ; [+3]
       16 LENGTH                           R3 R2
       17 LOADN                            R4 1
       18 LOADN                            R5 -1
       19 NEWTABLE                         R6 0 0
       21 MOVE                             R9 R3
       22 MOVE                             R7 R4
       23 MOVE                             R8 R5
       24 FORNPREP                         R7
       25 GETTABLE                         R10 R2 R9
       26 DUPTABLE                         R13 K9 [{"id", "name", "memberCount", "isPrivate", "color", "isEligible"}]
       27 GETTABLEKS                       R14 R10 K3 ["id"]
       29 SETTABLEKS                       R14 R13 K3 ["id"]
       31 GETTABLEKS                       R14 R10 K4 ["name"]
       33 SETTABLEKS                       R14 R13 K4 ["name"]
       35 GETTABLEKS                       R14 R10 K5 ["memberCount"]
       37 SETTABLEKS                       R14 R13 K5 ["memberCount"]
       39 GETTABLEKS                       R14 R10 K6 ["isPrivate"]
       41 SETTABLEKS                       R14 R13 K6 ["isPrivate"]
       43 GETTABLEKS                       R14 R10 K7 ["color"]
       45 SETTABLEKS                       R14 R13 K7 ["color"]
       47 GETTABLEKS                       R16 R10 K5 ["memberCount"]
       49 ORK                              R15 R16 K10 [0]
       50 GETUPVAL                         R16 1
       51 CALL                             R16 0 1
       52 JUMPIFLE                         R15 R16 ; [+2]
       54 LOADB                            R14 0 +1
       55 LOADB                            R14 1
       56 SETTABLEKS                       R14 R13 K8 ["isEligible"]
       58 FASTCALL2                        TABLE_INSERT R6 R13 ; [+4]
       60 MOVE                             R12 R6
       61 GETIMPORT                        R11 K13 [table.insert]
       63 CALL                             R11 2 0
       64 FORNLOOP                         R7
       65 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["GetPlayTesterPermissionMaxCount"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
