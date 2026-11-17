PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+7]
        3 LOADB                            R3 0
        4 FASTCALL1                        ASSERT R3 ; [+2]
        5 GETIMPORT                        R2 K1 [assert]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0
        9 NAMECALL                         R2 R0 K2 ["getState"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [pairs]
       14 GETTABLEKS                       R4 R2 K5 ["Breakpoint"]
       16 GETTABLEKS                       R4 R4 K6 ["MetaBreakpoints"]
       18 CALL                             R3 1 3
       19 FORGPREP_NEXT                    R3
       20 GETUPVAL                         R8 0
       21 MOVE                             R10 R6
       22 NAMECALL                         R8 R8 K7 ["GetBreakpointById"]
       24 CALL                             R8 2 1
       25 GETUPVAL                         R11 1
       26 NAMECALL                         R9 R8 K8 ["SetEnabled"]
       28 CALL                             R9 2 0
       29 FORGLOOP                         R3 2 ; [-10]
       31 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
