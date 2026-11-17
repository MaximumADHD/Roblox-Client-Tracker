PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["KeyboardAndMouse"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["Keyboard"]
        5 RETURN                           R1 1
        6 JUMPIFNOTEQKS                    R0 K2 ["Gamepad"] ; [+5]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["Controller"]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKS                    R0 K4 ["Touch"] ; [+5]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["HandHalfEllipse"]
       17 RETURN                           R1 1
       18 JUMPIFNOTEQKS                    R0 K6 ["VR"] ; [+5]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K7 ["XrHeadset"]
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 1
       25 MOVE                             R2 R0
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["exhaustiveMatch"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["Enums"]
       32 GETTABLEKS                       R4 R4 K13 ["IconName"]
       34 DUPCLOSURE                       R5 K14 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 RETURN                           R5 1
