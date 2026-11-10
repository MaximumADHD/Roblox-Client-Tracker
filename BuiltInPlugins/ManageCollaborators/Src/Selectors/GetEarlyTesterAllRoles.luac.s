PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["EarlyTesters"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K1 ["AllRoles"]
        9 NEWTABLE                         R3 0 0
       11 LENGTH                           R6 R2
       12 LOADN                            R4 1
       13 LOADN                            R5 -1
       14 FORNPREP                         R4
       15 GETTABLE                         R7 R2 R6
       16 DUPTABLE                         R10 K8 [{"id", "name", "memberCount", "isPrivate", "color", "isEligible"}]
       17 GETTABLEKS                       R11 R7 K2 ["id"]
       19 SETTABLEKS                       R11 R10 K2 ["id"]
       21 GETTABLEKS                       R11 R7 K3 ["name"]
       23 SETTABLEKS                       R11 R10 K3 ["name"]
       25 GETTABLEKS                       R11 R7 K4 ["memberCount"]
       27 SETTABLEKS                       R11 R10 K4 ["memberCount"]
       29 GETTABLEKS                       R11 R7 K5 ["isPrivate"]
       31 SETTABLEKS                       R11 R10 K5 ["isPrivate"]
       33 GETTABLEKS                       R11 R7 K6 ["color"]
       35 SETTABLEKS                       R11 R10 K6 ["color"]
       37 GETTABLEKS                       R13 R7 K4 ["memberCount"]
       39 ORK                              R12 R13 K9 [0]
       40 GETUPVAL                         R13 0
       41 CALL                             R13 0 1
       42 JUMPIFLE                         R12 R13 ; [+2]
       44 LOADB                            R11 0 +1
       45 LOADB                            R11 1
       46 SETTABLEKS                       R11 R10 K7 ["isEligible"]
       48 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       50 MOVE                             R9 R3
       51 GETIMPORT                        R8 K12 [table.insert]
       53 CALL                             R8 2 0
       54 FORNLOOP                         R4
       55 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["GetPlayTesterPermissionMaxCount"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
