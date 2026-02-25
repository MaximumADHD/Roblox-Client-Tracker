PROTO_0:
        0 GETTABLEKS                       R7 R1 K0 ["item"]
        2 GETTABLEKS                       R6 R7 K1 ["isEnabled"]
        4 NOT                              R5 R6
        5 GETTABLEKS                       R7 R1 K0 ["item"]
        7 GETTABLEKS                       R6 R7 K2 ["context"]
        9 JUMPIFNOTEQKNIL                  R6 ; [+22]
       11 MOVE                             R8 R5
       12 NAMECALL                         R6 R0 K3 ["SetEnabled"]
       14 CALL                             R6 2 0
       15 JUMPIFNOT                        R5 ; [+8]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K4 ["EnableMetaBreakpoint"]
       19 MOVE                             R9 R3
       20 NAMECALL                         R6 R2 K5 ["report"]
       22 CALL                             R6 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R8 R9 K6 ["DisableMetaBreakpoint"]
       27 MOVE                             R9 R3
       28 NAMECALL                         R6 R2 K5 ["report"]
       30 CALL                             R6 3 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R6 R7 K7 ["GetIntForGST"]
       35 GETTABLEKS                       R8 R1 K0 ["item"]
       37 GETTABLEKS                       R7 R8 K2 ["context"]
       39 CALL                             R6 1 1
       40 JUMPIFNOTEQKNIL                  R6 ; [+2]
       42 RETURN                           R0 0
       43 GETIMPORT                        R7 K9 [game]
       45 LOADK                            R9 K10 ["DebuggerUIService"]
       46 NAMECALL                         R7 R7 K11 ["GetService"]
       48 CALL                             R7 2 1
       49 LOADB                            R8 0
       50 JUMPIFNOT                        R4 ; [+10]
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R9 R10 K12 ["kInvalidDebuggerConnectionId"]
       54 JUMPIFEQ                         R4 R9 ; [+6]
       56 MOVE                             R11 R4
       57 NAMECALL                         R9 R7 K13 ["IsConnectionForPlayDataModel"]
       59 CALL                             R9 2 1
       60 NOT                              R8 R9
       61 JUMPIFNOT                        R8 ; [+6]
       62 JUMPIFNOT                        R5 ; [+5]
       63 MOVE                             R11 R5
       64 NAMECALL                         R9 R0 K3 ["SetEnabled"]
       66 CALL                             R9 2 0
       67 JUMP                             ; [+9]
       68 GETTABLEKS                       R12 R1 K0 ["item"]
       70 GETTABLEKS                       R11 R12 K14 ["scriptGUID"]
       72 MOVE                             R12 R6
       73 MOVE                             R13 R5
       74 NAMECALL                         R9 R0 K15 ["SetChildBreakpointEnabledByScriptAndContext"]
       76 CALL                             R9 4 0
       77 JUMPIFNOT                        R5 ; [+8]
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R11 R12 K16 ["EnableBreakpoint"]
       81 MOVE                             R12 R3
       82 NAMECALL                         R9 R2 K5 ["report"]
       84 CALL                             R9 3 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R11 R12 K17 ["DisableBreakpoint"]
       89 MOVE                             R12 R3
       90 NAMECALL                         R9 R2 K5 ["report"]
       92 CALL                             R9 3 0
       93 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Resources"]
       15 GETTABLEKS                       R2 R3 K7 ["AnalyticsEventNames"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Util"]
       24 GETTABLEKS                       R3 R4 K9 ["Constants"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 1 0
       29 DUPCLOSURE                       R4 K10 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R3 K11 ["setBreakpointRowEnabled"]
       34 RETURN                           R3 1
