PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Dropdown ID is not string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["Item"]
       18 GETTABLEKS                       R1 R1 K7 ["OnChange"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Item"]
        4 GETTABLEKS                       R2 R2 K1 ["Items"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 DUPTABLE                         R9 K4 [{"id", "text"}]
       10 GETTABLEKS                       R10 R6 K5 ["Id"]
       12 SETTABLEKS                       R10 R9 K2 ["id"]
       14 GETTABLEKS                       R10 R6 K6 ["Label"]
       16 SETTABLEKS                       R10 R9 K3 ["text"]
       18 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R7 K9 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-16]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K10 ["useCallback"]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R4 0 1
       33 GETTABLEKS                       R5 R0 K0 ["Item"]
       35 GETTABLEKS                       R5 R5 K11 ["OnChange"]
       37 SETLIST                          R4 R5 1 [1]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K12 ["createElement"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K13 ["Dropdown"]
       46 GETTABLEKS                       R4 R4 K14 ["Root"]
       48 DUPTABLE                         R5 K22 [{"label", "value", "onItemChanged", "items", "size", "width", "LayoutOrder"}]
       49 LOADK                            R6 K23 [""]
       50 SETTABLEKS                       R6 R5 K15 ["label"]
       52 GETTABLEKS                       R6 R0 K0 ["Item"]
       54 GETTABLEKS                       R6 R6 K24 ["Value"]
       56 SETTABLEKS                       R6 R5 K16 ["value"]
       58 SETTABLEKS                       R2 R5 K17 ["onItemChanged"]
       60 SETTABLEKS                       R1 R5 K18 ["items"]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K25 ["Enums"]
       65 GETTABLEKS                       R6 R6 K26 ["InputSize"]
       67 GETTABLEKS                       R6 R6 K27 ["Small"]
       69 SETTABLEKS                       R6 R5 K19 ["size"]
       71 GETIMPORT                        R6 K30 [UDim.new]
       73 LOADN                            R7 0
       74 LOADN                            R8 150
       75 CALL                             R6 2 1
       76 SETTABLEKS                       R6 R5 K20 ["width"]
       78 GETTABLEKS                       R6 R0 K31 ["NextOrder"]
       80 CALL                             R6 0 1
       81 SETTABLEKS                       R6 R5 K21 ["LayoutOrder"]
       83 CALL                             R3 2 -1
       84 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K10 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
