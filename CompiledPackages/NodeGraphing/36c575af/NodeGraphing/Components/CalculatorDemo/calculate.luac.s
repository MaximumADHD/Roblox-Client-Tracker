PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["add"] ; [+9]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R0 K2 ["input"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K3 ["scalar"]
       10 ADD                              R1 R2 R3
       11 RETURN                           R1 1
       12 GETTABLEKS                       R1 R0 K0 ["type"]
       14 JUMPIFNOTEQKS                    R1 K4 ["constant"] ; [+4]
       16 GETTABLEKS                       R1 R0 K5 ["value"]
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K0 ["type"]
       21 JUMPIFNOTEQKS                    R1 K6 ["negate"] ; [+12]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R2 R0 K2 ["input"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R3 R0 K7 ["enabled"]
       29 JUMPIFNOT                        R3 ; [+2]
       30 MINUS                            R2 R1
       31 RETURN                           R2 1
       32 MOVE                             R2 R1
       33 RETURN                           R2 1
       34 GETTABLEKS                       R1 R0 K0 ["type"]
       36 JUMPIFNOTEQKS                    R1 K8 ["round"] ; [+35]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R2 R0 K2 ["input"]
       41 CALL                             R1 1 1
       42 GETTABLEKS                       R2 R0 K9 ["mode"]
       44 GETIMPORT                        R3 K13 [Enum.EasingDirection.In]
       46 JUMPIFNOTEQ                      R2 R3 ; [+7]
       48 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       49 MOVE                             R3 R1
       50 GETIMPORT                        R2 K16 [math.floor]
       52 CALL                             R2 1 1
       53 RETURN                           R2 1
       54 GETTABLEKS                       R2 R0 K9 ["mode"]
       56 GETIMPORT                        R3 K18 [Enum.EasingDirection.Out]
       58 JUMPIFNOTEQ                      R2 R3 ; [+7]
       60 FASTCALL1                        MATH_CEIL R1 ; [+3]
       61 MOVE                             R3 R1
       62 GETIMPORT                        R2 K20 [math.ceil]
       64 CALL                             R2 1 1
       65 RETURN                           R2 1
       66 FASTCALL1                        MATH_ROUND R1 ; [+3]
       67 MOVE                             R3 R1
       68 GETIMPORT                        R2 K21 [math.round]
       70 CALL                             R2 1 1
       71 RETURN                           R2 1
       72 GETTABLEKS                       R1 R0 K0 ["type"]
       74 JUMPIFNOTEQKS                    R1 K22 ["null"] ; [+3]
       76 LOADN                            R1 0
       77 RETURN                           R1 1
       78 GETTABLEKS                       R1 R0 K0 ["type"]
       80 LOADN                            R2 0
       81 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
