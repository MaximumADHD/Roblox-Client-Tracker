PROTO_0:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+12]
        7 LOADK                            R2 K3 ["DUPLICATE_UI_BUTTON"]
        8 GETTABLEKS                       R4 R0 K4 ["uiButton"]
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETTABLEKS                       R3 R0 K4 ["uiButton"]
       13 GETTABLEKS                       R3 R3 K5 ["name"]
       15 RETURN                           R2 2
       16 MOVE                             R3 R1
       17 RETURN                           R2 2
       18 LOADK                            R2 K6 ["DUPLICATE_KEYCODE"]
       19 GETTABLEKS                       R3 R1 K7 ["Name"]
       21 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
