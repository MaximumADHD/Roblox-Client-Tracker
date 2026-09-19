PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["visibleMenuState"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["visibleMenuState"]
       10 GETTABLEKS                       R0 R0 K1 ["sourcePinInfo"]
       12 JUMPIFNOTEQKNIL                  R0 ; [+3]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R2 R0 K2 ["sourcePinDataType"]
       18 JUMPIFEQKS                       R2 K3 ["Parameter"] ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["visibleMenuState"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["visibleMenuState"]
       10 GETTABLEKS                       R0 R0 K1 ["sourcePinInfo"]
       12 JUMPIFNOTEQKNIL                  R0 ; [+3]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R2 R0 K2 ["sourcePinDataType"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["DEFAULT_PIN_DATA_TYPE"]
       21 JUMPIFEQ                         R2 R3 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useMemo"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 GETTABLEKS                       R4 R0 K3 ["visibleMenuState"]
       16 SETLIST                          R3 R4 1 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R4 0 1
       27 GETTABLEKS                       R5 R0 K3 ["visibleMenuState"]
       29 SETLIST                          R4 R5 1 [1]
       31 CALL                             R2 2 1
       32 DUPTABLE                         R3 K6 [{"isParameterOnlyInsertMenu", "isDataOnlyInsertMenu"}]
       33 SETTABLEKS                       R1 R3 K4 ["isParameterOnlyInsertMenu"]
       35 SETTABLEKS                       R2 R3 K5 ["isDataOnlyInsertMenu"]
       37 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["InsertNodeContext"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["React"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_2]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
