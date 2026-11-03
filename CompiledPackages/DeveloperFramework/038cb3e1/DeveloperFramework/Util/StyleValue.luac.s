PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["name"]
        3 RETURN                           R0 1

PROTO_1:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 ["StyleValue.new expects a 'name' parameter"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 FASTCALL2K                       ASSERT R1 K3 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K3 ["StyleValue.new expects a 'themesToValuesMap' parameter"]
       11 GETIMPORT                        R2 K2 [assert]
       13 CALL                             R2 2 0
       14 DUPTABLE                         R2 K6 [{"name", "themes"}]
       15 SETTABLEKS                       R0 R2 K4 ["name"]
       17 SETTABLEKS                       R1 R2 K5 ["themes"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R2 K7 ["__tostring"]
       23 GETUPVAL                         R5 0
       24 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       26 MOVE                             R4 R2
       27 GETIMPORT                        R3 K9 [setmetatable]
       29 CALL                             R3 2 0
       30 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["themes"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K4 ["get"]
       12 RETURN                           R0 1
