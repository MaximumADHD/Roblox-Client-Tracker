PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K0 ["_screenGui"]
       10 LOADN                            R5 2
       11 LENGTH                           R6 R0
       12 FASTCALL3                        TABLE_UNPACK R0 R5 R6
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K2 [unpack]
       17 CALL                             R3 3 -1
       18 CALL                             R1 -1 -1
       19 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["WindowFocused"] ; [+4]
        2 GETTABLEKS                       R2 R0 K1 ["_windowFocused"]
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R1 K2 ["WindowFocusReleased"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["_windowFocusReleased"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R3 R0 K4 ["_screenGui"]
       12 GETTABLE                         R2 R3 R1
       13 FASTCALL1                        TYPEOF R2 ; [+3]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K6 [typeof]
       17 CALL                             R3 1 1
       18 JUMPIFNOTEQKS                    R3 K7 ["function"] ; [+5]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 RETURN                           R3 1
       24 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_screenGui"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETIMPORT                        R1 K2 [Instance.new]
        4 LOADK                            R2 K3 ["ScreenGui"]
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K7 [{"_screenGui", "_windowFocused", "_windowFocusReleased"}]
        7 SETTABLEKS                       R1 R2 K4 ["_screenGui"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K1 ["new"]
       12 CALL                             R3 0 1
       13 SETTABLEKS                       R3 R2 K5 ["_windowFocused"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K1 ["new"]
       18 CALL                             R3 0 1
       19 SETTABLEKS                       R3 R2 K6 ["_windowFocusReleased"]
       21 DUPTABLE                         R5 K10 [{"__index", "__newIndex"}]
       22 DUPCLOSURE                       R6 K11 [PROTO_1]
       23 SETTABLEKS                       R6 R5 K8 ["__index"]
       25 DUPCLOSURE                       R6 K12 [PROTO_2]
       26 SETTABLEKS                       R6 R5 K9 ["__newIndex"]
       28 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       30 MOVE                             R4 R2
       31 GETIMPORT                        R3 K14 [setmetatable]
       33 CALL                             R3 2 1
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R3 K8 ["Signal"]
       20 DUPCLOSURE                       R3 K9 [PROTO_3]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
