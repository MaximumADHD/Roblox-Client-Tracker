PROTO_0:
        0 LOADK                            R3 K0 ["^%s*(.-)%s*$"]
        1 LOADK                            R4 K1 ["%1"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Enum.AssetType]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 RETURN                           R1 1
        5 LOADK                            R4 K0 ["([^,]+),?"]
        6 NAMECALL                         R2 R0 K1 ["gmatch"]
        8 CALL                             R2 2 3
        9 FORGPREP                         R2
       10 LOADK                            R9 K2 ["^%s*(.-)%s*$"]
       11 LOADK                            R10 K3 ["%1"]
       12 NAMECALL                         R7 R5 K4 ["gsub"]
       14 CALL                             R7 3 1
       15 JUMPIFEQKS                       R7 K5 [""] ; [+30]
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          VAL R7
       19 FASTPCALL                        pcall 1 ; [+2]
       20 GETIMPORT                        R8 K7 [pcall]
       22 CALL                             R8 1 2
       23 JUMPIFNOT                        R8 ; [+7]
       24 FASTCALL1                        TYPEOF R9 ; [+3]
       25 MOVE                             R11 R9
       26 GETIMPORT                        R10 K9 [typeof]
       28 CALL                             R10 1 1
       29 JUMPIFEQKS                       R10 K10 ["EnumItem"] ; [+12]
       31 GETIMPORT                        R10 K12 [warn]
       33 LOADK                            R12 K13 ["Ignoring \"%*\" in FStringToolboxPublishDraftAssetTypesCSV: it is not an "]
       34 MOVE                             R14 R7
       35 NAMECALL                         R12 R12 K14 ["format"]
       37 CALL                             R12 2 1
       38 LOADK                            R13 K15 ["Enum.AssetType name. Drafts of that type will be exposed without being published."]
       39 CONCAT                           R11 R12 R13
       40 CALL                             R10 1 0
       41 JUMP                             ; [+4]
       42 GETTABLEKS                       R10 R9 K16 ["Value"]
       44 LOADB                            R11 1
       45 SETTABLE                         R11 R1 R10
       46 FORGLOOP                         R2 1 ; [-37]
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 RETURN                           R1 1
